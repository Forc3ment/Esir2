/****************************************************************************
 *
 *
 * Copyright (C) 2016 Universit� de Rennes 1. All rights reserved.
 *
 * This software was developed at:
 * Universite de Rennes 1
 * Campus Universitaire de Beaulieu
 * 35042 Rennes Cedex
 *
 * This file uses the ViSP library.
 *
 
 *
 *****************************************************************************/


#include <iostream>

/*!
 \example tp6.cpp
 
 */

#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>

using namespace std;



////////////////////////////////////////////////////////////////////////////////////
////////////////////// FONCTIONS UTILES ////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

/**
 * @brief affiche une image � l'�cran � la position (posX,posY) et attend un clic
 * @param img : l'image � afficher
 * @param posX, posY : coordonn�es spatiales pour positionner affichage de la fenetre sur l'�cran
 * @param title : titre de la fenetre graphique
 * @warning : fonction bloquante
 */
void afficheImage(vpImage<unsigned char> img, int posX, int posY, const char *title)
{
    vpDisplayX d(img, posX, posY, title);
    vpDisplay::display(img);
    vpDisplay::flush(img);
    vpDisplay::getClick(img);
    vpDisplay::close(img);
}

void histogramme(const vpImage<unsigned char>  &I, unsigned int* histo, int &max)
{
    unsigned int i = I.getHeight();
    unsigned int j = I.getWidth();

    for(int i=0; i<256; i++)
    {
        *(histo+i)=0;
    }

    max = 0;
    for(int k=0; k<i; k++)
    {
        for(int l=0; l<j; l++)
        {
            unsigned int toto = I[k][l];
            (*(histo+toto))++;
            if((*(histo+toto))>max)max = *(histo+I[k][l]);
        }
    }
}

/**
 * @brief effectue le traitement d'une boucle: calcul des nouveaux centre puis des nouveaux seuil
 * et verification que les centre ne sont pas egaux avant et apres la boucle. 
 */
bool boucle(int* center,int* seuil,unsigned int* histo, int k)
{
    int ancien_centre[k];

    for(int i = 0; i<k; i++)
    {
        ancien_centre[i] = center[i];
    }

    for(int i = 0; i<k; i++)
    {
        int sum = 0;
        int nb_elem = 0;
        for(int j = seuil[i]; j<seuil[i+1]; j++)
        {
            sum += histo[j] * j;
            nb_elem += histo[j];
        }
        if(nb_elem!=0)center[i]= sum/nb_elem;

        for (int i = 1; i<k; i++)
        {
            seuil[i]= (center[i] + center[i-1])/2;
        }
        
    }



    for(int i = 0; i<k; i++)
    {
        if(ancien_centre[i] != center[i]) return false;
    }

    return true;
}

void k_means(const vpImage<unsigned char>  &I, vpImage<unsigned char>  &Is, int k)
{
    int n;
    int nb_ite=0;
    unsigned int *histo = new unsigned int[256];
    int max = 0;
    
    // initialisation des k centres
    int* center= new int[k];

    // Répartition equitable des centre.
    for (int i = 0; i < k; i++)
    {
        center[i] = ((double)(i+1)/(double)(k+1))*256; 
    }

    // calcul des seuil a partir des centre.
    int* seuil = new int [k+1];
    seuil[0]=0;
    seuil[k]=255;
    for (int i = 1; i<k; i++)
    {
        seuil[i]= (center[i] + center[i-1])/2;
    }
    
    //calcul de l'histogrammede l'image
    histogramme(I, histo, max);

    // Réalisation du traitement tant que les centre ne sont pas égaux.
    while(! boucle(center, seuil, histo, k))
    {
        nb_ite++;
    } 
    
    cout << "nb iterations : " << nb_ite << endl;
    
    
    // Calcul de l'image segmentee finale
     for (int i=0; i<I.getHeight();i++){
        for (int j=0; j<I.getWidth();j++){
            for(int a = 1; a < k+1; a++)
            {
                if(I[i][j]<seuil[a] && I[i][j]>=seuil[a-1]) Is[i][j]=center[a-1];
            }
        }
    }

    for (int i = 0; i < k; i++)
    {
        cout << "centre : " << center[i] << endl; 
    }


    delete[] center;
    delete[] seuil;
}



void quantification_uniforme(const vpImage<unsigned char>  &I, vpImage<unsigned char>  &Iq, int nb_nv)
{
    int heigth = I.getHeight();
    int width = I.getWidth();
    int q = 256/nb_nv;                        //pas de quantification

    vpImage<unsigned char> I1 (heigth, width);

    for(int i=0; i<heigth; i++)
    {
        for(int j=0; j<width; j++)
        {
            for(int t=0; t<256; t+=q)
            {
                if(I[i][j]>=t && I[i][j]<t+q)
                {
                    Iq[i][j] = t + q/2;
                }
            }
        }
    }

    for(int t=0; t<256; t+=q) cout << "centre : " << t << endl;

}




////////////////////////////////////////////////////////////////////////////////////
//////////////////////      MAIN        ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
    int nb_nv = 5;

	// creation du menu
	cout << "BINP TP 6 :  SEGMENTATION " << endl ;
	cout << "--" << endl ;
	
	// chargement d'une image
	vpImage<unsigned char>  I0;
	string sIm;
    //cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
	//vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    // vpImageIo::read(I0,"../images/graines.jpg");
    vpImageIo::read(I0,"../images/lena.pgm");
    afficheImage(I0,100,100,"Image originale") ;
   
    /// Segmentation par quantification uniforme
    vpImage<unsigned char>  Iquantif(I0.getHeight(),I0.getWidth(),0);
    quantification_uniforme(I0,Iquantif,nb_nv);
    afficheImage(Iquantif,100,500,"Image quantifiee") ;
    vpImageIo::write(Iquantif,"../resultat/Iquantif.pgm");

    /// Segmentation par k-means
  	vpImage<unsigned char>  Isegm(I0.getHeight(),I0.getWidth(),0);
    k_means(I0, Isegm, nb_nv);
    afficheImage(Isegm,100,500,"Image segmentee") ;
    vpImageIo::write(Isegm,"../resultat/Isegm.pgm");
    

    
    // Desallocation
    I0.destroy();
    Isegm.destroy();
    Iquantif.destroy();
     
	cout << "Fin du programme " << endl ;
	return(0);
}

