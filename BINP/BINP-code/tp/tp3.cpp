/****************************************************************************
 * Copyright (C) 2010 Universite de Rennes 1. All rights reserved.
 *
 * This software was developed at:
 * Universite de Rennes 1
 * Campus Universitaire de Beaulieu
 * 35042 Rennes Cedex
 *
 * This file uses the ViSP library.
*****************************************************************************/

/****************************************************************************
 * NOMS - PRENOMS:
 *  -
 *	-
 * 
 * Date :
 *****************************************************************************/


#include <iostream>

#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>

using namespace std;


////////////////////// FONCTIONS AFFICHAGE ////////////////////////////////////////////

/*
 Affiche un histogramme dans une fenêtre graphique à la position (posX, posY) sur l'écran.
 Parametres d'entree :
 - max est la valeur maximum (en ordonnée) de l'histogramme
 - size est la dimension de l'histogramme
 - posX, posY sont les paramètres de position de la fenêtre d'affichage sur l'écran
 */
void tracer_histo(const unsigned int *histo, const unsigned int max, const int size, const int posX, const int posY) {
	
	vpImage<unsigned char> Ih(100,size) ;
	Ih = 0;
	
	vpDisplayX d2(Ih,posX,posY) ;
	vpDisplay::display(Ih) ;
	vpDisplay::flush(Ih) ;
	
	
	int i;
	for(i=0;i<size;i++)
		vpDisplay::displayLine(Ih,99,i,99-(int)(histo[i]*99/max),i,vpColor::red);
	vpDisplay::flush(Ih) ;
	vpDisplay::getClick(Ih) ;
	vpDisplay::close(Ih) ;	
}



/**
 * @brief affiche une image à l'écran à la position (posX,posY) et attend un clic
 * @param img : l'image à afficher
 * @param posX, posY : coordonnées spatiales pour positionner affichage de la fenetre sur l'écran
 * @warning : fonction bloquante
 */
void afficheImage(vpImage<vpRGBa> img, int posX, int posY, const char *title)
{
    vpDisplayX d(img, posX, posY, title);
    vpDisplay::display(img);
    vpDisplay::flush(img);
    vpDisplay::getClick(img);
    vpDisplay::close(img);
}



/////////////////////////////////////////////////////////////////////////////////////

/* max est la valeur maximum de l'histogramme (le mode principal), utilisee pour l'affichage de l'histogramme*/
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


void histocumule(unsigned int* histo, unsigned int* histocumul)
{
	*histocumul=*histo;
    for(int i=1; i<256; i++)
    {
    	*(histocumul+i)=*(histo+i)+(*(histocumul+(i-1)));
    }
}



/*calcul de la moyenne, l'ecart-type et la dynamique d'une image à partir de son histogramme*/
void stat(unsigned int *histo,
          int h, int w,
          double & moyenne,
          double & ecart_type,
          unsigned char &min, unsigned char &max)
{
	min = 255;
	max = 0;

    for(int i=1; i<256; i++)
    {
    	moyenne+=i*(*(histo+i));
    	if(*(histo+i)!=0 && min>i) min=i;
    	if(*(histo+i)!=0 && max<i) max=i;
    }
    moyenne=moyenne/(h*w);
    int a = 0;
    for(int i=1; i<256; i++)
    {
	    a+= *(histo+i) * ((i-moyenne) * (i-moyenne));
    }

    ecart_type = sqrt( a/(h*w) );
}


/* calcul du nombre de niveaux de gris occupés dans une image*/
int nbNDGOccupe (const unsigned int *histo)
{
 	int ndgo = 0;
 	for(int i=1; i<256; i++)
    {
    	if(*(histo+i)!=0) ndgo++;
    }
    return ndgo;
}



/* Calcule et affiche les stats d'une image,
 ainsi que l'histogramme dans une fenêtre graphique à la position (posX, posY) sur l'écran.*/
void display_stat(const vpImage<unsigned char>  &I0, const unsigned int h,const unsigned int w, const int posX, const int posY)
{

	unsigned int *histo = new unsigned int[256];
	
    int maxx = 0;
	double moyenne = 0;
	double ecart_type = 0;
	unsigned char min = 0;
	unsigned char max = 0;

	histogramme(I0,histo,maxx);

	stat(histo, I0.getHeight(), I0.getWidth(), moyenne, ecart_type, min, max);

	cout<<"moyenne : "<<moyenne<<", ecart type : "<<ecart_type<<", max : "<< (int)max << ", min : "<< (int)min <<", dynamique : "<< (max-min) <<", ndgo : "<< nbNDGOccupe(histo) << endl;

	tracer_histo(histo, maxx, 256, 300, 100);

	delete []histo;
	
}

void anamorphose1(const vpImage<unsigned char>  &I0, const float pente)
{
	int heigth = I0.getHeight();
	int width = I0.getWidth();

	vpImage<unsigned char> I1 (heigth, width);

	for(int i=0; i<heigth; i++)
	{
		for(int j=0; j<width; j++)
		{
			I1[i][j]=I0[i][j]*pente;
		}
	}
	vpDisplayX d1(I1,300,100) ;
        vpDisplay::setTitle(I1, "Première anamorphose");
        vpDisplay::display(I1);
        vpDisplay::flush(I1) ;
        vpDisplay::getClick(I1);
}


void anamorphose2(const vpImage<unsigned char>  &I0, const unsigned int seuil)
{
	int heigth = I0.getHeight();
	int width = I0.getWidth();

	vpImage<unsigned char> I1 (heigth, width);

	unsigned int pente = 255/seuil;

	for(int i=0; i<heigth; i++)
	{
		for(int j=0; j<width; j++)
		{
			if(I0[i][j]>seuil)
				I1[i][j]=255;
			else
				I1[i][j]=I0[i][j]*pente;
		}
	}
	vpDisplayX d1(I1,300,100) ;
        vpDisplay::setTitle(I1, "Seconde anamorphose");
        vpDisplay::display(I1);
        vpDisplay::flush(I1);
        vpDisplay::getClick(I1);
}


void egalisation(const vpImage<unsigned char>  &I)
{
	int max = 0;
	unsigned int *histo = new unsigned int[256];
	unsigned int *histocumul = new unsigned int[256];

	int heigth = I.getHeight();
	int width = I.getWidth();

	vpImage<unsigned char> I1 (heigth, width);

	int gmax = 255;
	int n = heigth*width;

	histogramme(I,histo,max);
	histocumule(histo,histocumul);

	for(int i=0; i<heigth; i++)
	{
		for(int j=0; j<width; j++)
		{
			float pixel = (float)(*(histocumul+I[i][j]))/(float)n;
			I1[i][j]= (int)(pixel * gmax);
		}
	}

	vpDisplayX d1(I1,300,100) ;
		vpDisplay::setTitle(I1, "Resultat de l'égalisation");
	    vpDisplay::display(I1);
	    vpDisplay::flush(I1);

	    tracer_histo(histocumul,histocumul[255],256,100,400);

	    vpDisplay::getClick(I1);

    delete [] histo;
    delete [] histocumul;
}


/* calcul l'EQM entre l'image originale I et l'image après quantification Iq*/
double EQM (const vpImage<unsigned char>  &I, const vpImage<unsigned char>  &Iq){
    
    return 0;
}


void quantification_uniforme(const vpImage<unsigned char>  &I, int nbbits)
{

    
}




int main(int argc, char **argv)
{

  cout << "BINP TP3 : HISTOGRAMMES ET QUANTIFICATION" << endl ;
  cout << "--" << endl ;

	vpImage<unsigned char>  I0;
	vpImage<unsigned char>  I1;
	vpImage<unsigned char>  I2;
	string sIm = "../images/lena.pgm";	
	vpDisplayX d0(100,100,"Image originale") ;
	float pente;
	unsigned int seuil;
	
	int choix=0;
	while(choix<4)
	{
		cout << "\n-------------------------------------" << endl;
		cout<<"1. Affichage des stats d'une image"<<endl;
		cout<<"2. Anamorphoses"<<endl;
		cout<<"3. Egalisation d'histogramme"<<endl;
 		cout<<"4. Quantification uniforme"<<endl;
		cout<<"5. Quitter"<<endl;
		
		cin>>choix;
		cout << "-------------------------------------" << endl;

		switch(choix)
		{
			case 1 :
				cout << "Nom de l'image : "; //cin >> sIm; // Ex: ../images/nom_image
				vpImageIo::read(I0,sIm) ;
                /* pour debugger :
                 vpImageIo::read(I0,"../data/nom_image") ;
                */
				d0.init(I0);
				vpDisplay::display(I0);
				vpDisplay::flush(I0) ;
				cout << "\n Valeurs image initiale : " << endl;

				display_stat(I0, I0.getHeight(), I0.getWidth(), 100, 500);
				
				vpDisplay::getClick(I0);
				vpDisplay::close(I0) ;
				break;
			case 2 :
				cout << "Nom de l'image : "; //cin >> sIm; 	
				vpImageIo::read(I0,sIm) ;
				d0.init(I0);
				vpDisplay::display(I0);
				vpDisplay::flush(I0) ;	
				
				// Premiere anamorphose
				cout << "\npente ? "; cin >> pente; 	
				anamorphose1(I0,pente);
				
				// Deuxieme anamorphose
				cout << "\nseuil ? "; cin >> seuil; 
				anamorphose2(I0, seuil);
				
				vpDisplay::getClick(I0);
				vpDisplay::close(I0) ;
				break;
			case 3 :
                cout << "Nom de l'image : "; //cin >> sIm;
                vpImageIo::read(I0,sIm) ;
				d0.init(I0);
				vpDisplay::display(I0);
				vpDisplay::flush(I0) ;	
				
				// Egalisation
				egalisation(I0);
				
				vpDisplay::getClick(I0);
				vpDisplay::close(I0) ;
				break;
                
            case 4 :
                cout << "Nom de l'image : "; //cin >> sIm;
                vpImageIo::read(I0,sIm) ;
                d0.init(I0);
                vpDisplay::display(I0);
                vpDisplay::flush(I0) ;
                
                int nbbits;
                cout <<"entrer le nombre bits par composante :"<<endl;
                cin >> nbbits;
                
                // Quantification uniforme
                quantification_uniforme(I0, nbbits);
                
                vpDisplay::getClick(I0);
                vpDisplay::close(I0) ;
                break;
                
				
			default :
				break;
		}
	}
	

	
  cout << "Fin du programme " << endl ;
  return(0);
}










