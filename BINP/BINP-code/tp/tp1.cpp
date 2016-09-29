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
#include <visp3/core/vpUniRand.h>

using namespace std;

// QUESTION 2 : LIMITE DE PERCEPTION VISUELLE
void question2(){
	vpImage<unsigned char>  I1(384,384);

	 for (int i=0; i<=383; i++)
                for (int j=0; j<=383; j++){
			if(i<192){;
				if((i>64 && i<128) && (j>64 && j<128))
				{
					I1[i][j]=130;
				}
				else if((i>64 && i<128) && (j>256 && j<320))
				{
					I1[i][j]=132;
				}else{
					I1[i][j]=128;
				}
			}else{
				if((i>256 && i<320) && (j>64 && j<128))
				{
					I1[i][j]=246;
				}
				else if((i>256 && i<320) && (j>256 && j<320))
				{
					I1[i][j]=248;
				}else{
					I1[i][j]=244;
				}
			}
                }


	vpDisplayX d1(I1,100,100) ;
        vpDisplay::setTitle(I1, "Image n.d.g.");
        vpDisplay::display(I1);
        vpDisplay::flush(I1) ;
        vpDisplay::getClick(I1);
}

// QUESTION 3 : PERCEPTION DES COULEURS
void question3(){
	vpImage<vpRGBa>  I1(384,384);
	vpImage<vpRGBa>  I2(384,384);
	vpImage<vpRGBa>  I3(384,384);

	unsigned int val;
	
	cout << "Entrez la valeur de x";
	cin >> val;
	cout << val;
	

	for (int i=0; i<=383; i++) 
		for (int j=0; j<=383; j++){
			if((i>160 && i<224) && (j>160 && j<224)){
				I1[i][j].R=128 + val;
				I1[i][j].G=0;
				I1[i][j].B=0;
			}else{
				I1[i][j].R=128 ;
				I1[i][j].G=0;
				I1[i][j].B=0;	
			}
	}

	vpDisplayX d1(I1,100,100) ;
	vpDisplay::setTitle(I1, "Image rouge");
	vpDisplay::display(I1);
	vpDisplay::flush(I1) ;	
	vpDisplay::getClick(I1);

	for (int i=0; i<=383; i++) 
		for (int j=0; j<=383; j++){
			if((i>160 && i<224) && (j>160 && j<224)){
				I2[i][j].R=0;
				I2[i][j].G=128+val;
				I2[i][j].B=0;
			}else{
				I2[i][j].R=0;
				I2[i][j].G=128;
				I2[i][j].B=0;	
			}
	}

	vpDisplayX d2(I2,100,100) ;
	vpDisplay::setTitle(I2, "Image verte");
	vpDisplay::display(I2);
	vpDisplay::flush(I2) ;	
	vpDisplay::getClick(I2);

	for (int i=0; i<=383; i++) 
		for (int j=0; j<=383; j++){
			if((i>160 && i<224) && (j>160 && j<224)){
				I3[i][j].R=0;
				I3[i][j].G=0;
				I3[i][j].B=128+val;
			}else{
				I3[i][j].R=0;
				I3[i][j].G=0;
				I3[i][j].B=128;	
			}
	}

	vpDisplayX d3(I3,100,100) ;
	vpDisplay::setTitle(I3, "Image bleue");
	vpDisplay::display(I3);
	vpDisplay::flush(I3) ;	
	vpDisplay::getClick(I3);

}

// QUESTION 4 : ILLUSION DU GRADIENT
void question4(){
	vpImage<unsigned char>  I1(384,256);

	 for (int i=0; i<=383; i++)
                for (int j=0; j<=255; j++){
			if(i<188){
				I1[i][j]=255;
			}
			else if(i<196){
				I1[i][j]=128;
			}
			else{
				I1[i][j]=255;
			}
                }

	vpDisplayX d1(I1,100,100) ;
        vpDisplay::setTitle(I1, "Image n.d.g.");
        vpDisplay::display(I1);
        vpDisplay::flush(I1) ;
        vpDisplay::getClick(I1);

	vpImage<unsigned char>  I2(384,256);

	 for (int i=0; i<=383; i++)
                for (int j=0; j<=255; j++){
			if(i<188){
				I2[i][j]=j;
			}
			else if(i<196){
				I2[i][j]=128;
			}
			else{
				I2[i][j]=j;
			}
                }

	vpDisplayX d2(I2,100,100) ;
        vpDisplay::setTitle(I2, "Image n.d.g.");
        vpDisplay::display(I2);
        vpDisplay::flush(I2) ;
        vpDisplay::getClick(I2);

}

// QUESTION 5 : BANDES DE MACH
void question5(){

	vpImage<unsigned char>  I1(290,360);

	 for (int i=0; i<=289; i++)
                for (int j=0; j<=359; j++){
			if(j<60){
				I1[i][j]=102;
			}
			else if(j<120){
				I1[i][j]=127;
			}
			else if(j<180){
				I1[i][j]=152;
			}
			else if(j<240){
				I1[i][j]=178;
			}
			else if(j<300){
				I1[i][j]=202;
			}
			else{
				I1[i][j]=228;
			}
                }

	vpDisplayX d1(I1,290,360) ;
        vpDisplay::setTitle(I1, "Image n.d.g.");
        vpDisplay::display(I1);
        vpDisplay::flush(I1) ;
        vpDisplay::getClick(I1);

}

// QUESTION 6 : GRILLE DE HERMAN
void question6(){
	vpImage<unsigned char>  I1(168,168);

	 for (int i=0; i<=167; i++)
                for (int j=0; j<=167; j++){
			if(((i>8 && i<40)||(i>48 && i<80)||(i>88 && i<120)||(i>128 && i<160))&&((j>8 && j<40)||(j>48 && j<80)||(j>88 && j<120)||(j>128 && j<160)))
			{
				I1[i][j]=0;
			}else{
				I1[i][j]=255;
			}
		}
	


	vpDisplayX d1(I1,100,100) ;
        vpDisplay::setTitle(I1, "Image n.d.g.");
        vpDisplay::display(I1);
        vpDisplay::flush(I1) ;
        vpDisplay::getClick(I1);
}

// QUESTION 7 : EFFET DE MASQUAGE
void question7(){
	vpImage<unsigned char> I7 (256,256);
vpImage<unsigned char> I7B (256,256);

	for (int i = 0; i<256; i++){
		for (int j=0; j<256; j++){
			
			if( j > 128) I7[i][j] =0;
			else I7[i][j]=255;
			}

	}


	
  vpDisplayX d7(I7,256,256) ;
  vpDisplay::setTitle(I7, "Image question 7");
  vpDisplay::display(I7);
  vpDisplay::flush(I7) ;	
  vpDisplay::getClick(I7);



int LB;
int HB;
int boucle = 1;
while( boucle == 1){

	cout << " Veuillez rentrer une valeur pour LB : " << endl;
	cin >> LB;
	cout << " Veuillez rentrer une valeur pour HB : " << endl;
	cin >> HB;

	vpUniRand noise;
	int bruit;



		for (int i = 0; i<256; i++){
			for (int j=0; j<256; j++){
				
				if (j < (128-(LB/2))) I7B[i][j]=255;
				else 	I7B[i][j] = 0;
				}

		}
		
		for (int j = (128-(LB/2)); j<=(128+(LB/2)); j++){
			bruit = HB * noise();
			for (int i = 0; i<256; i++){
				if (j < 128) I7B[i][j]-=bruit;
				else 	I7B[i][j]+=bruit;
			}
		}

	  vpDisplayX d8(I7B,256,256) ;
	  vpDisplay::setTitle(I7B, "Image bruit ");
	  vpDisplay::display(I7B);
	  vpDisplay::flush(I7B) ;	
	  vpDisplay::getClick(I7B);

	}
}


int main(int argc, char **argv)
{

  cout << "BINP TP1 : PERCEPTION VISUELLE " << endl ;
  cout << "--" << endl ;


  // creation du menu
  int choix=0;
  while(choix<7) {

    cout << "1. Limite de perception visuelle" <<endl ;
    cout << "2. Perception des couleurs"<<endl;
	cout << "3. Illusion du gradient" << endl;
    cout << "4. Bandes de Mach"<<endl;
    cout << "5. Grille de Herman"<<endl;
    cout << "6. Effet de masquage"<<endl;
    cout << "7. Quitter"<<endl;

    cin >> choix ;

    switch(choix) {
    case 1:
      question2();
      break;

    case 2:
      question3();
      break;

    case 3:
      question4();
      break;

    case 4:
      question5();
      break;

    case 5:
      question6();
	  break;
	  
    case 6:
      question7();	  
	  
    default:
      break;
    }
  }

  cout << "Fin du programme " << endl ;
  return(0);
}















