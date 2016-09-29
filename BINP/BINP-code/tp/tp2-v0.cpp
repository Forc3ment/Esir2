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



#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>


using namespace std;


////////////////////// FONCTIONS FOURNIES ////////////////////////////////////////////
void HSVtoRGB(int h,int s,int v,vpRGBa &pix)
{




	int r=v, g=v, b=v;
    if ( s == 0 || h == -1 ) {                  // achromatic case
        ;
    } else {                                    // chromatic case
        if ( (unsigned int)h >= 360 )
            h %= 360;
        unsigned int f = h%60;
        h /= 60;
        unsigned int p = (unsigned int)(2*v*(255-s)+255)/510;
        unsigned int q, t;
        if ( h&1 ) {
            q = (unsigned int)(2*v*(15300-s*f)+15300)/30600;
            switch( h ) {
                case 1: r=(int)q; g=(int)v, b=(int)p; break;
                case 3: r=(int)p; g=(int)q, b=(int)v; break;
                case 5: r=(int)v; g=(int)p, b=(int)q; break;
            }
        } else {
            t = (unsigned int)(2*v*(15300-(s*(60-f)))+15300)/30600;
            switch( h ) {
                case 0: r=(int)v; g=(int)t, b=(int)p; break;
                case 2: r=(int)p; g=(int)v, b=(int)t; break;
                case 4: r=(int)t; g=(int)p, b=(int)v; break;
            }
        }
    }
    pix.R=r;
    pix.G=g;
    pix.B=b;
}

void RGBtoHSV( int &h, int &s, int &v , vpRGBa &pix)
{
    int r = pix.R;
    int g = pix.G;
    int b = pix.B;
    unsigned int max = r;                               // maximum RGB component
    int whatmax = 0;                            // r=>0, g=>1, b=>2
    if ( (unsigned int)g > max ) {
        max = g;
        whatmax = 1;
    }
    if ( (unsigned int)b > max ) {
        max = b;
        whatmax = 2;
    }
    unsigned int min = r;                               // find minimum value
    if ( (unsigned int)g < min ) min = g;
    if ( (unsigned int)b < min ) min = b;
    int delta = max-min;
    v = max;                                    // calc value
    s = max ? (510*delta+max)/(2*max) : 0;
    if ( s == 0 ) {
        h = -1;                         // undefined hue
    } else {
        switch ( whatmax ) {
            case 0:                             // red is max component
                if ( g >= b )
                    h = (120*(g-b)+delta)/(2*delta);
                else
                    h = (120*(g-b+delta)+delta)/(2*delta) + 300;
                break;
				case 1:                             // green is max component
                if ( b > r )
                    h = 120 + (120*(b-r)+delta)/(2*delta);
                else
                    h = 60 + (120*(b-r+delta)+delta)/(2*delta);
                break;
				case 2:                             // blue is max component
                if ( r > g )
                    h = 240 + (120*(r-g)+delta)/(2*delta);
                else
                    h = 180 + (120*(r-g+delta)+delta)/(2*delta);
                break;
        }
    }
}
//////////////////////////////////////////////////////////////////




int main(int argc, char **argv)
{

	// Partie 1

  cout << "BINP TP2 : MANIPULATION DES COULEURS " << endl ;
  cout << "--" << endl ;

  // creation du menu

	vpImage<vpRGBa>  I1;
	vpImageIo::read(I1,"../images/baboon_jpg.ppm") ;

	int height = I1.getHeight();
	int width = I1.getWidth();

	vpImage<unsigned char> IR (height,width);
	vpImage<unsigned char> IG (height,width);
	vpImage<unsigned char> IB (height,width);

	  for (int i=0;i<height;i++){
  		  for(int j=0;j<width;j++){
			IR[i][j] = I1[i][j].R;
			IG[i][j] = I1[i][j].G;
			IB[i][j] = I1[i][j].B;
  	 	}
 	 }

	vpDisplayX d2(I1,I1.getHeight(),I1.getWidth()) ;
	vpDisplay::setTitle(I1, "Image couleur");
	vpDisplay::display(I1);
	vpDisplay::flush(I1) ;	
	vpDisplay::getClick(I1);

	vpDisplayX dr(IR,IR.getHeight(),IR.getWidth()) ;
	vpDisplay::setTitle(IR, "Image rouge");
	vpDisplay::display(IR);
	vpDisplay::flush(IR) ;	
	vpDisplay::getClick(IR);

	vpDisplayX dg(IG,IG.getHeight(),IG.getWidth()) ;
	vpDisplay::setTitle(IG, "Image verte");
	vpDisplay::display(IG);
	vpDisplay::flush(IG) ;	
	vpDisplay::getClick(IG);

	vpDisplayX db(IB,IB.getHeight(),IB.getWidth()) ;
	vpDisplay::setTitle(IB, "Image bleu");
	vpDisplay::display(IB);
	vpDisplay::flush(IB) ;	
	vpDisplay::getClick(IB);


	vpImage<unsigned char> IC (height,width);
	vpImage<unsigned char> IM (height,width);
	vpImage<unsigned char> IY (height,width);

	  for (int i=0;i<height;i++){
  		  for(int j=0;j<width;j++){
			IC[i][j] = 1 - I1[i][j].R;
			IM[i][j] = 1 - I1[i][j].G;
			IY[i][j] = 1 - I1[i][j].B;
  	 	}
 	 }

	vpDisplayX d3(I1,height,I1.getWidth()) ;
	vpDisplay::setTitle(I1, "Image couleur");
	vpDisplay::display(I1);
	vpDisplay::flush(I1) ;	
	vpDisplay::getClick(I1);

	vpDisplayX dc(IC,height,width) ;
	vpDisplay::setTitle(IC, "Image Cyan ");
	vpDisplay::display(IC);
	vpDisplay::flush(IC) ;	
	vpDisplay::getClick(IC);

	vpDisplayX dm(IM,height,width) ;
	vpDisplay::setTitle(IM, "Image Magenta");
	vpDisplay::display(IM);
	vpDisplay::flush(IM) ;	
	vpDisplay::getClick(IM);

	vpDisplayX dy(IY,height,width) ;
	vpDisplay::setTitle(IY, "Image Yellow");
	vpDisplay::display(IY);
	vpDisplay::flush(IY) ;	
	vpDisplay::getClick(IY);


	vpImage<unsigned char> Y (height,width);
	vpImage<unsigned char> Cb (height,width);
	vpImage<unsigned char> Cr (height,width);

	  for (int i=0;i<height;i++){
  		  for(int j=0;j<width;j++){
			Y[i][j] = 0.2125* I1[i][j].R + 0.7154 * I1[i][j].G + 0.0721* I1[i][j].B;
			Cb[i][j] = (-0.115* I1[i][j].R ) + (-0.385 * I1[i][j].G)  + 0.5* I1[i][j].B;
			Cr[i][j] = 0.5*I1[i][j].R + (-0.454* I1[i][j].G) + (-0.046* I1[i][j].B);
  	 	}
 	 }

	vpDisplayX d4(I1,height,I1.getWidth()) ;
	vpDisplay::setTitle(I1, "Image couleur");
	vpDisplay::display(I1);
	vpDisplay::flush(I1) ;	
	vpDisplay::getClick(I1);

	vpDisplayX dY(Y,height,width) ;
	vpDisplay::setTitle(Y, "Image Y");
	vpDisplay::display(Y);
	vpDisplay::flush(Y) ;	
	vpDisplay::getClick(Y);

	vpDisplayX dCb(Cb,height,width) ;
	vpDisplay::setTitle(Cb, "Image Cb");
	vpDisplay::display(Cb);
	vpDisplay::flush(Cb) ;	
	vpDisplay::getClick(Cb);

	vpDisplayX dCr(Cr,height,width) ;
	vpDisplay::setTitle(Cr, "Image Cr");
	vpDisplay::display(Cr);
	vpDisplay::flush(Cr) ;	
	vpDisplay::getClick(Cr);

	// Partie 2
 
	int phi = 10;

	vpImage<unsigned char>  I2;
	vpImageIo::read(I2,"../images/head.pgm") ;

	int height2 = I2.getHeight();
	int width2 = I2.getWidth();

	vpImage<vpRGBa> RGB (height2,width2);

  	for (int i=0;i<height2;i++){
  		  for(int j=0;j<width2;j++){
			HSVtoRGB(I2[i][j]+phi,255,255,RGB[i][j]);
  	 	}
  	}

  	vpDisplayX dRGB(RGB,height2,width2) ;
	vpDisplay::setTitle(RGB, "Image RGB");
	vpDisplay::display(RGB);
	vpDisplay::flush(RGB) ;	
	vpDisplay::getClick(RGB);

	

  cout << "Fin du programme " << endl ;
  return(0);
}















