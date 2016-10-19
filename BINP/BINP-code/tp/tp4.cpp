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
 \example tp4.cpp
 
 */

#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>
#include <visp3/core/vpImageConvert.h>

using namespace std;


////////////////////// FONCTIONS UTILES ////////////////////////////////////////////

/**
 * @brief affiche une image � l'�cran � la position (posX,posY) et attend un clic
 * @param img : l'image � afficher
 * @param posX, posY : coordonn�es spatiales pour positionner affichage de la fenetre sur l'�cran
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


// Fonction d'affichage d'une image sur sortie standard
void affiche(const vpImage<unsigned char> &src){
    int i,j;
    printf("\n ");
    for(i=0;i<src.getHeight();i++){
        for(j=0;j<src.getWidth();j++){
            printf("%d ",src[i][j]);
        }
        printf("\n ");
    }
}



/////////////////////////////////////////////////////////////////////////////////////

vpImage<double> * transpose(vpImage<double> &I)
{
	int heigth = I.getHeight();
	int width = I.getWidth();

	

 	vpImage<double> * res = new vpImage<double>(width,heigth);
    cout << res->getHeight() <<" "<<res->getWidth() << endl;

    for(int i = 0; i < heigth; i++)
    {
        for(int j = 0; j < width; j++)
        {
            (*res)[j][i] = I[i][j];
        }
    }

    return res;
}


double convolution(const vpImage< unsigned char > &I, int i, int j, const vpMatrix &K)
{
    int rows = K.getRows();
    int cols = K.getCols();
	int heigth = I.getHeight();
	int width = I.getCols();

    double sum = 0;
    int m = 0;
    int n = 0;

    for(int k = -rows/2; k<=rows/2; k++)
    {
    	n=0;
    	for(int l = -cols/2; l<=cols/2; l++)
    	{
    		if(i+k<0 || i+k>=heigth)
    			sum+=0;

    		else if(j+l<0 || j+l>=width)
    			sum+=0;

    		else	
    			sum += I[i+k][j+l]*K[m][n];
    		n++;
    	}
    	m++;
    }

    return sum;
    
}

void filtrage2D(const vpImage< unsigned char > &I, vpImage< double > &If, const vpMatrix &K)
{
	int heigth = I.getHeight();
	int width = I.getCols();

 	for(int i = 0; i<heigth; i++)
    {
    	for(int j = 0; j<width; j++)
    	{
    		If[i][j] = convolution(I,i,j,K);
    	}
    }
}

double convolution1D(const vpImage< double > &I, int i, int j, const vpMatrix &K)
{
    int rows = 1;
    int cols = K.getCols();
	int heigth = I.getHeight();
	int width = I.getCols();

    double sum = 0;
    int n = 0;

    for(int k = -cols/2; k<=cols/2; k++)
    {
    	if(j+k<0 || j+k>=width)
    		sum+=0;

    	else	
    		sum += I[i][j+k]*K[0][n];
    	n++;
    }

    return sum;
    
}


void filtrage1D(const vpImage< double > &I, vpImage< double > &If, const vpMatrix &K)
{
	int heigth = I.getHeight();
	int width = I.getCols();

 	for(int i = 0; i<heigth; i++)
    {
    	for(int j = 0; j<width; j++)
    	{
    		If[i][j] = convolution1D(I,i,j,K);
    	}
    }
}


void filtrage2D_separable(const vpImage< unsigned char > &I, vpImage< double > &If, const vpMatrix &Kx, const vpMatrix &Ky)
{
	vpImage<double> Id;
	vpImageConvert::convert(I,Id);

    filtrage1D(Id,If,Kx);
   	vpImage<double> * tIf1 = transpose(If);
   	
   	filtrage1D(*tIf1, If,Ky);
   	vpImage<double> * tIf2 = transpose(If);
   	If = *tIf2;

   	tIf1->destroy();
   	tIf2->destroy();
}

double convolution_median(const vpImage< unsigned char > &I, int i, int j, int size)
{
    int rows = size;
    int cols = size;
    int heigth = I.getHeight();
    int width = I.getCols();

    vector<unsigned char>  toto (size*size,0); 
    int n = 0;

    for(int k = -rows/2; k<=rows/2; k++)
    {
        for(int l = -cols/2; l<=cols/2; l++)
        {
            if(i+k<0 || i+k>=heigth || j+l<0 || j+l>=width)
                toto[n]=0;
            else    
                toto[n]=I[i+k][j+l];
            n++;
        }
    }

    sort(toto.begin(),toto.end());

    return toto[((size*size)/2)+1];
    
}

void filtre_median(const vpImage< unsigned char > &I, vpImage< unsigned char  > &If, int size)
{
    int heigth = I.getHeight();
    int width = I.getCols();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            If[i][j] = convolution_median(I,i,j,size);
        }
    }
}

int main(int argc, char **argv)
{
	// creation du menu
	cout << "BINP TP 4 :  FILTRAGE D'IMAGES " << endl ;
	cout << "--" << endl ;
	
	// chargement d'une image
	vpImage<unsigned char>  I0;
	string sIm;
//  cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
// 	vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    vpImageIo::read(I0,"../images/lena.pgm"); 
    afficheImage(I0,100,100,"Image originale") ;

    // Image test pour debugger
    vpImage<unsigned char> Itest(4,5);
    for (int i=0;i<Itest.getHeight();i++){
        Itest[i][0]=250 ; Itest[i][1]=200 ; Itest[i][2]=150 ; Itest[i][3]=100 ; Itest[i][4]=50 ;
    }
    //affiche(Itest);


    int height = I0.getHeight();
	int width = I0.getCols();
    
    vpImage<double> Ic;   // image convoluee
    vpImage<unsigned char> If; // Image to display
    
    Ic.resize(height,width,0);
    If.resize(height,width,0);

    // declarations des filtres
    vpMatrix F1(1,3,1.0/9);
    vpMatrix F2(1,3,1);F2[0][0]=1.0/16;F2[0][1]=2.0/16;F2[0][2]=1.0/16;
    vpMatrix F3(1,3,1);F3[0][0]=1;F3[0][1]=2;F3[0][2]=1;
    vpMatrix Ka(5,5,1); // Filtre moyenneur
    vpMatrix Ksx(3,3,0); Ksx[0][0]=-1.0/4; Ksx[1][0]=-2.0/4; Ksx[2][0]=-1.0/4; Ksx[0][2]=1.0/4; Ksx[1][2]=2.0/4; Ksx[2][2]=1.0/4;// Sobel kernel X
    vpMatrix Ksy(3,3,0); Ksy[2][2]=-1.0/4; Ksy[2][1]=-2.0/4; Ksy[2][0]=-1.0/4; Ksy[0][0]=1.0/4; Ksy[0][1]=2.0/4; Ksy[0][2]=1.0/4;// Sobel kernel Y
    vpMatrix Kl(3,3,-1.0/8); Kl[1][1]=8.0/8; // Laplacien 8-voisins

    vpMatrix test(3,3,1.0/16);
    test[0][1]=2.0/16;test[1][0]=2.0/16;test[1][1]=4.0/16;test[1][2]=2.0/16;test[2][1]=2.0/16;
    
    
    //filtrage2D_separable(I0,Ic,F2,F3);
    filtrage2D(I0,Ic,Ksx);

    // for(int i = 0; i<height; i++) //Pour filtre sans négatif
    // {
    // 	for(int j = 0; j<width; j++)
    // 	{
    // 		If[i][j] = (unsigned char)Ic[i][j];
    // 	}
    // }

    vpImageConvert::convert(Ic,If); //pour filtre dérivatif

    //filtre_median(I0,If,3);

   	//affiche(Ic);

    afficheImage(If,300,100,"image convoluée");
	
	
	cout << "Fin du programme " << endl ;

	return(0);
}





