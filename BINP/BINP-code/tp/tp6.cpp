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



/**
 * @brief retourne l'indice du centroide le plus proche du niveau de gris 'ndg'
 * @param ndg : valeur du niveau de gris dont on cherche le centroide le plus proche
 * @param centers : tableau contenant l'ensemble des centroides auxquels on compare 'ndg'
 * @param size : nombre de centres (taille du tableau)
 */
int find_center(unsigned char ndg, const int* centers, const int size){
    
    int index=0;

    
    return index;
   
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

    for (int i = 0; i < k; i++)
    {
        center[i] = ((double)(i+1)/(double)(k+1))*256;
    }

    int* seuil = new int [k+1];
    seuil[0]=0;
    seuil[k]=255;
    for (int i = 1; i<k; i++)
    {
        seuil[i]= (center[i] + center[i-1])/2;
    }

    // calcul des valeurs des k centres
    // 1. classification des pixels par rapport a leur distance aux centres courants
    // 2. recalcul des centres de gravite en fonction des pixels qui leur ont ete assigne
    // 3. calcul de la condition d'arret
    
    histogramme(I, histo, max);

    while(! boucle(center, seuil, histo, k))
    {
        for (int i = 0; i<k; i++)
        {
            cout << "seuil "<<i<< " : " <<seuil[i] << endl;
            cout << "centre "<<i<< " : " <<center[i] << endl;
        }
        nb_ite++;
    } 
    
    
    cout << "nb iterations : " << nb_ite << endl;
    
    
    // Calcul de l'image segmentee finale
     for (int i=0; i<I.getHeight();i++){
        for (int j=0; j<I.getWidth();j++){
            for(int a = 1; a < k+1; a++)
            {
                if(Is[i][j]<seuil[a]) Is[i][j]=center[a-1];
            }
        }
    }
    
    delete[] center;
    delete[] seuil;
}



void quantification_uniforme(const vpImage<unsigned char>  &I, vpImage<unsigned char>  &Iq, int nb_nv)
{


}




////////////////////////////////////////////////////////////////////////////////////
//////////////////////      MAIN        ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
	// creation du menu
	cout << "BINP TP 6 :  SEGMENTATION " << endl ;
	cout << "--" << endl ;
	
	// chargement d'une image
	vpImage<unsigned char>  I0;
	string sIm;
    //cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
	//vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    vpImageIo::read(I0,"../images/graines.jpg");
    afficheImage(I0,100,100,"Image originale") ;
    
    
    /// Segmentation par k-means
  	vpImage<unsigned char>  Isegm(I0.getHeight(),I0.getWidth(),0);
    k_means(I0, Isegm, 2);
    afficheImage(Isegm,100,500,"Image segmentee") ;
    vpImageIo::write(Isegm,"../resultats/Isegm.pgm");
    
    /// Segmentation par quantification uniforme
    //vpImage<unsigned char>  Iquantif(I0.getHeight(),I0.getWidth(),0);
    //quantification_uniforme(I0,Iquantif,2);
    //afficheImage(Iquantif,500,100,"Image quantifiee") ;
    //vpImageIo::write(Iquantif,"../resultats/Iquantif.pgm");
    
    // Desallocation
    I0.destroy();
    Isegm.destroy();
    //Iquantif.destroy();
     
	cout << "Fin du programme " << endl ;
	return(0);
}

