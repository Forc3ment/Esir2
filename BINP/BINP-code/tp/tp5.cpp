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
 \example tp5.cpp
 
 */

#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>
//#include <visp3/core/vpImageConvert.h>

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


/**
 * @brief calcule le complementaire d'une forme
 * @param im: image d'entr�e
 * @return image complementaire de im (nouvelle image, allocation memoire)
 */
vpImage<unsigned char> complementaire(vpImage<unsigned char> &im)
{
    
    vpImage<unsigned char> comp(im.getHeight(),im.getWidth(),0) ;
    
    int i,j;
    for(i=0;i<im.getHeight();i++){
        for(j=0;j<im.getWidth();j++){
            if (im[i][j]==0) comp[i][j]=255;
        }
    }
    return comp;
}



////////////////////////////////////////////////////////////////////////////////////
////////////////////// IMAGES BINAIRES  ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////


// Cette fonction renvoie 1 (255) si l'intersection de l'element structurant es positionne au point
// (i,j) et de la forme de l'image I est non vide.
int applique_masque_dilatation(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es, int i, int j )
{
    int rows = es.getHeight();
    int cols = es.getWidth();

    int heigth = I.getHeight();
    int width = I.getWidth();

    int m = 0;
    int n = 0;

    for(int k = -rows/2; k<=rows/2; k++)
    {

        n=0;
        for(int l = -cols/2; l<=cols/2; l++ )
        {

            if( i+k<0 || i+k>=heigth || j+l<0 || j+l>=width );
                
            else if (es[m][n] == 255 && I[i+k][j+l] == 255) return 255;
            
            //cout << "i: " << i << "j:" << j << "k: " << k << "l:" << l << "m: " << m << "n:" << n <<endl;
            n++;    
        }
        m++;
    }

    return 0;
}


// Calcul la dilatation de l'image I par l'element structurant es.
vpImage< unsigned char > dilatation(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    
    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char > Id(I.getHeight(),I.getWidth(),0) ;
    
    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            Id[i][j] = applique_masque_dilatation(I,es,i,j);
        }
    }
    
    return Id;
}



// Cette fonction renvoie 1 (255) si l'element structurant es positionne au point
// (i,j) de l'image est entierement inclus dans la forme de I.
int applique_masque_erosion(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es, int i, int j)
{
    int rows = es.getHeight();
    int cols = es.getWidth();

    int heigth = I.getHeight();
    int width = I.getWidth();

    int m = 0;
    int n = 0;

    for(int k = -rows/2; k<=rows/2; k++)
    {
        n=0;
        for(int l = -cols/2; l<=cols/2; l++ )
        {
            if( i+k<0 || i+k>=heigth || j+l<0 || j+l>=width );
                
            else if (es[m][n] == 255 && I[i+k][j+l] == 0) return 0;
            
            n++;    
        }
        m++;
    }

    return 255;
}



// Cette fonction calcule l'erosion de l'image I par l'element structurant es
vpImage< unsigned char > erosion(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{

    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char >Ie(I.getHeight(),I.getWidth(),0) ;
    
    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            Ie[i][j] = applique_masque_erosion(I,es,i,j);
        }
    }
    
    return Ie;
}




// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
vpImage< unsigned char >  ouverture(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >Io;
    
    Io = dilatation(erosion(I,es),es);
    
    return Io;
    
}


// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
vpImage< unsigned char >  fermeture(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >If;
    
    If = erosion(dilatation(I,es),es);
    
    return If;
    
}


////////////////////////////////////////////////////////////////////////////////////
//////////////////////      DUALITE     ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////


// Cette fonction calcule l'erosion de l'image I par l'element structurant es
// en utilisant les proprietes de dualite
vpImage< unsigned char > erosion_dual(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    
    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char >Ie(I.getHeight(),I.getWidth(),0) ;
    Ie=I;
    Ie=complementaire(Ie);
    Ie=dilatation(Ie,es);
    Ie=complementaire(Ie);
    return Ie;
}



// Calcul la dilatation de l'image I par l'element structurant es
// en utilisant les proprietes de dualite
vpImage< unsigned char > dilatation_dual(const vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    
    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char > Id(I.getHeight(),I.getWidth(),0) ;
    Id=I;
    Id=complementaire(Id);
    Id=erosion(Id,es);
    Id=complementaire(Id);
    return Id;
}



// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
// en utilisant les proprietes de dualite
vpImage< unsigned char >  ouverture_dual(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >Io;
    Io=I;
    Io=complementaire(Io);
    Io=fermeture(Io,es);
    Io=complementaire(Io);
    return Io;
    
}



// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
// en utilisant les proprietes de dualite
vpImage< unsigned char >  fermeture_dual(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >If;
    If=I;
    If=complementaire(If);
    If=ouverture(If,es);
    If=complementaire(If);
    return If;
    
}

////////////////////////////////////////////////////////////////////////////////////
////////////////////// IMAGES NDG       ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////



/**
 * @brief calcule la dilatation en NDG du pixel (i,j) de l'image im par rapport a l'element structurant masque
 *
 * @param im: image de travail
 * @param masque: element structurant
 * @param i: ligne
 * @param j: colonne
 * @return valeur du point (i,j) apres dilatation
 */
int applique_masque_dilatation_NDG(const vpImage< unsigned char > &im, const vpImage< unsigned char > &masque, int i, int j){
    
    int rows = masque.getHeight();
    int cols = masque.getWidth();

    int heigth = im.getHeight();
    int width = im.getWidth();

    int m = 0;
    int n = 0;

    int max = 0;

    for(int k = -rows/2; k<=rows/2; k++)
    {
        n=0;
        for(int l = -cols/2; l<=cols/2; l++ )
        {
            if( !(i+k<0 || i+k>=heigth || j+l<0 || j+l>=width) && (im[k+i][j+l] > max) && (masque[m][n]==255) )
                max = im[i+k][j+l]; 
            
            n++;    
        }
        m++;
    }

    return max;
}

// Calcul la dilatation de l'image I par l'element structurant masque.
vpImage< unsigned char > dilatation_NDG(const vpImage< unsigned char > &I, const vpImage< unsigned char > &masque)
{
    
    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char > Id(I.getHeight(),I.getWidth(),0) ;
    
    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            Id[i][j] = applique_masque_dilatation_NDG(I,masque,i,j);
        }
    }
    
    return Id;
}


/**
 * @brief calcule l'erosion en NDG en un pixel du pixel (i,j) de l'image im selon l'element structurant masque
 *
 * @param im: image de travail
 * @param masque: element structurant
 * @param i: ligne
 * @param j: colonne
 *
 * @return valeur apres erosion au point (i,j)
 */
int applique_masque_erosion_NDG(const vpImage< unsigned char > &im, const vpImage< unsigned char > &masque, int i, int j){
    
    
    int rows = masque.getHeight();
    int cols = masque.getWidth();

    int heigth = im.getHeight();
    int width = im.getWidth();

    int m = 0;
    int n = 0;

    int min = 255;

    for(int k = -rows/2; k<=rows/2; k++)
    {
        n=0;
        for(int l = -cols/2; l<=cols/2; l++ )
        {
            if( !(i+k<0 || i+k>=heigth || j+l<0 || j+l>=width) && (im[k+i][j+l] < min) && (masque[m][n]==255) )
                min = im[i+k][j+l]; 
            
            n++;    
        }
        m++;
    }

    return min;
    
}

// Cette fonction calcule l'erosion de l'image I par l'element structurant masque
vpImage< unsigned char > erosion_NDG(const vpImage< unsigned char > &I, const vpImage< unsigned char > &masque)
{

    //Allocate memory for an [height x width] image and initialize the image to val.
    vpImage< unsigned char >Ie(I.getHeight(),I.getWidth(),0) ;
    
    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            Ie[i][j] = applique_masque_erosion_NDG(I,masque,i,j);
        }
    }
    
    return Ie;
}

// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
vpImage< unsigned char >  ouverture_NDG(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >Io;
    
    Io = dilatation_NDG(erosion_NDG(I,es),es);
    
    return Io;
    
}


// Cette fonction retourne l'ouverture de l'image I par l'element structurant es
vpImage< unsigned char >  fermeture_NDG(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >If;
    
    If = erosion_NDG(dilatation_NDG(I,es),es);
    
    return If;
    
}


////////////////////////////////////////////////////////////////////////////////////
////////////////////// TRAITEMENTS      ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////


// Cette fonction calcule le gradient morphologique de l'image I avec l'element structurant es
vpImage< unsigned char >  gradient_morpho(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >grad(I.getHeight(),I.getWidth(),0);
    
    grad = dilatation_NDG(I,es) - erosion_NDG(I,es);
    
    return grad;
    
}


// Cette fonction calcule le laplacien morphologique de l'image I avec l'element structurant es
vpImage< unsigned char >  laplacien_morpho(vpImage< unsigned char > &I, const vpImage< unsigned char > &es)
{
    vpImage< unsigned char >laplacien(I.getHeight(),I.getWidth(),0);
    vpImage< unsigned char >dilatation(I.getHeight(),I.getWidth(),0);
    vpImage< unsigned char >erosion(I.getHeight(),I.getWidth(),0);
    
    dilatation = dilatation_NDG(I,es);
    erosion = erosion_NDG(I,es);

    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            int val = (int)erosion[i][j] + (int)dilatation[i][j] - 2*(int)I[i][j];
            laplacien[i][j] = (unsigned char)abs(val);
        }
    }

    dilatation.destroy();
    erosion.destroy();

    return laplacien;
    
}




// Cette fonction renvoit 1 (255) si le gabarit de la transformation en tout-ou-rien
// peut etre "plac�" au pixel (i,j).
int ttourien(vpImage< unsigned char > &im, const vpImage< unsigned char > &gabarit, int i, int j){
    
    int rows = gabarit.getHeight();
    int cols = gabarit.getWidth();

    int heigth = im.getHeight();
    int width = im.getWidth();

    int m = 0;
    int n = 0;

    int min = 255;

    for(int k = -rows/2; k<=rows/2; k++)
    {
        n=0;
        for(int l = -cols/2; l<=cols/2; l++ )
        {
            if( !(i+k<0 || i+k>=heigth || j+l<0 || j+l>=width))
            {
                if( (gabarit[m][n]==255 && im[k+i][j+l] == 0) 
                    || (gabarit[m][n]==0 && im[k+i][j+l] == 255))
                    
                    return 0;      
            }
            
            n++;    
        }
        m++;
    }

    return 255;
}


// Cette fonction calcule la transformee en tout-ou-rien de l'image I par le gabarit 'gabarit'
vpImage< unsigned char >  toutourien(vpImage< unsigned char > &I, const vpImage< unsigned char > &gabarit)
{
    vpImage< unsigned char >Ittr(I.getHeight(),I.getWidth(),0);
    
    int heigth = I.getHeight();
    int width = I.getWidth();

    for(int i = 0; i<heigth; i++)
    {
        for(int j = 0; j<width; j++)
        {
            Ittr[i][j] = ttourien(I,gabarit,i,j);
        }
    }

    return Ittr;
    
}






////////////////////////////////////////////////////////////////////////////////////
//////////////////////      MAIN        ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
	// creation du menu
	cout << "BINP TP 5 :  MORPHOLOGIE MATHEMATIQUE " << endl ;
	cout << "--" << endl ;
	
	// chargement d'une image
	vpImage<unsigned char>  I0;
    vpImage<unsigned char>  I1;
    //vpImage<unsigned char>  I2;
	string sIm;
    // cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
	// vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    vpImageIo::read(I0,"../images/test_operateur_bin.pgm"); //Binaire
    afficheImage(I0,100,100,"Image originale") ;

    vpImageIo::read(I1,"../images/lena.pgm"); //NDG
    afficheImage(I1,100,100,"Image originale") ;
    
    // element structurant
    vpImage<unsigned char>  ES(3,3,255);
    vpImage<unsigned char> masque(5,5,255);
    vpImage<unsigned char> gabarit(3,3,0);
    gabarit[1][1]=255;
    
    vpImage<unsigned char> Idilate=dilatation(I0,ES);
    afficheImage(Idilate,100,100,"Image dilatee") ;
    vpImageIo::write(Idilate,"../resultat/image_dilatee.pgm");

    vpImage<unsigned char> Idilate_dual=dilatation_dual(I0,ES);
    afficheImage(Idilate_dual,100,100,"Image dilatee dual") ;
    vpImageIo::write(Idilate_dual,"../resultat/image_dilatee_dual.pgm");


    // vpImage<unsigned char> Ierode=erosion(I0,ES);
    // afficheImage(Ierode,100,100,"Image erodee") ;
    // vpImageIo::write(Ierode,"../resultat/image_erodee.pgm");
    
    // vpImage<unsigned char> Iopen=ouverture(I0,ES);
    // afficheImage(Iopen,100,100,"Image ouverte") ;
    // vpImageIo::write(Iopen,"../resultat/image_ouverte.pgm");

    // vpImage<unsigned char> Iclose=fermeture(I0,ES);
    // afficheImage(Iclose,100,100,"Image fermee") ;
    // vpImageIo::write(Iclose,"../resultat/image_fermee.pgm");

    // vpImage<unsigned char> Idilate_NDG=dilatation_NDG(I1,masque);
    // afficheImage(Idilate_NDG,100,100,"Image dilatee NDG") ;
    // vpImageIo::write(Idilate_NDG,"../resultat/image_dilatee_NDG.pgm");

    // vpImage<unsigned char> Ierode_NDG=erosion_NDG(I1,masque);
    // afficheImage(Ierode_NDG,100,100,"Image erodee NDG") ;
    // vpImageIo::write(Ierode_NDG,"../resultat/image_erodee_NDG.pgm");

    // vpImage<unsigned char> Iopen_NDG=ouverture_NDG(I1,masque);
    // afficheImage(Iopen_NDG,100,100,"Image ouverte NDG") ;
    // vpImageIo::write(Iopen_NDG,"../resultat/image_ouverte_NDG.pgm");

    // vpImage<unsigned char> Iclose_NDG=fermeture_NDG(I1,masque);
    // afficheImage(Iclose_NDG,100,100,"Image fermee NDG") ;
    // vpImageIo::write(Iclose_NDG,"../resultat/image_fermee_NDG.pgm");
    
    // vpImage<unsigned char> Igrad=gradient_morpho(I1,ES);
    // afficheImage(Igrad,100,100,"Gradient morphologique") ;
    // vpImageIo::write(Igrad,"../resultat/image_grad.pgm");

    vpImage<unsigned char> Ilaplacien=laplacien_morpho(I1,ES);
    afficheImage(Ilaplacien,100,100,"Laplacien morphologique") ;
    vpImageIo::write(Ilaplacien,"../resultat/image_laplacien.pgm");

    // vpImage<unsigned char> Ittr=toutourien(I0,gabarit);
    // afficheImage(Ittr,100,100,"Transformee en tout ou rien") ;
    // vpImageIo::write(Ittr,"../resultat/image_ttr.pgm");


    // Desallocation
    I0.destroy();
    I1.destroy();
    Idilate.destroy();
    Idilate_dual.destroy();
    // Ierode.destroy();
    // Iopen.destroy();
    // Iclose.destroy();
    // Idilate_NDG.destroy();
    // Ierode_NDG.destroy();
    // Iopen_NDG.destroy();
    // Iclose_NDG.destroy();
    // Igrad.destroy();
    Ilaplacien.destroy();
    // Ittr.destroy();

    ES.destroy();
    masque.destroy();
    gabarit.destroy();

	cout << "Fin du programme " << endl ;
	return(0);
}