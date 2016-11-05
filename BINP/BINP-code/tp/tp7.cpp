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

void reductionSimple(vpImage<unsigned char> &I, vpImage<unsigned char> &Ir, int n)
{
 	unsigned int height = I.getHeight();
    unsigned int width = I.getWidth();

    for(int i=0; i<height/n; i++)
    {
        for(int j=0; j<width/n; j++)
        {
        	Ir[i][j] = I[n*i][n*j];
        }   
    }
}

void reductionBilineaire(vpImage<unsigned char> &I, vpImage<unsigned char> &Ir, int n)
{
 	unsigned int height = I.getHeight();
    unsigned int width = I.getWidth();

    for(int i=0; i<height/n; i++)
    {
        for(int j=0; j<width/n; j++)
        {
        	int sum = 0;
        	for(int k=0; k<n; k++)
    		{
        		for(int l=0; l<n; l++)
        		{
					sum += I[n*i+k][n*j+l];
        		}
        	}
        	Ir[i][j] = sum / (n*n);
        }   
    }
}

int interpolation(float x, float y, const vpImage<unsigned char> &I)
{
	float x2x, y2y, yy1, xx1, val1, val2, val3, val4;
	x2x = (int)x+1 -x;
	y2y = (int)y+1 -y;
	xx1 = x - (int)x;
	yy1 = y - (int)y;

 	cout << x << " " << y << " "<< endl;
	if(x>I.getHeight()-1 && y>I.getWidth()-1)
	{cout << "toto"<<endl;
		val1 =	I[(int)x][(int)y] * x2x +
			  	I[(int)x][(int)y] * xx1;

		val2 =	I[(int)x][(int)y] * y2y +
			  	I[(int)x][(int)y] * yy1;

		val3 =  I[(int)x][(int)y] * x2x +
				I[(int)x][(int)y] * xx1 ;

		val4 =	I[(int)x][(int)y] * y2y +
				I[(int)x][(int)y] * yy1 ;
	}
	else if(x>I.getHeight()-1)
	{cout << "toto2"<<endl;
		val1 =	I[(int)x][(int)y] * x2x +
				I[(int)x][(int)y+1] * xx1;

		val2 =	I[(int)x][(int)y+1] * y2y +
				I[(int)x][(int)y+1] * yy1;

		val3 =	I[(int)x][(int)y] * x2x +
				I[(int)x][(int)y+1] * xx1 ;

		val4 =	I[(int)x][(int)y] * y2y +
				I[(int)x][(int)y] * yy1 ;
	}
	else if(y>I.getWidth()-1)
	{cout << "toto3" <<endl;
		val1 =	I[(int)x][(int)y] * x2x +
				I[(int)x][(int)y] * xx1;

		val2 =	I[(int)x][(int)y] * y2y +
				I[(int)x+1][(int)y] * yy1;

		val3 =	I[(int)x+1][(int)y] * x2x +
				I[(int)x+1][(int)y] * xx1 ;

		val4 =	I[(int)x][(int)y] * y2y +
				I[(int)x+1][(int)y] * yy1 ;
	}
	else
	{
		cout << x << " " << y << endl;
		val1 =	I[(int)x][(int)y] * x2x +
				I[(int)x][(int)y+1] * xx1;

		val2 =	I[(int)x][(int)y+1] * y2y +
				I[(int)x+1][(int)y+1] * yy1;

		val3 =	I[(int)x+1][(int)y] * x2x +
				I[(int)x+1][(int)y+1] * xx1 ;

		val4 =	I[(int)x][(int)y] * y2y +
				I[(int)x+1][(int)y] * yy1 ;
		cout << val1 << " " << val2 << endl;
	}

	cout << val1*y2y + val2*xx1 + val3*yy1 + val4*x2x << "\n"<<endl;
	return val1*y2y + val2*xx1 + val3*yy1 + val4*x2x;
}

void aggrandissementBilineaire(vpImage<unsigned char> &I, vpImage<unsigned char> &Ir, double n)
{
 	unsigned int height = Ir.getHeight();
    unsigned int width = Ir.getWidth();

    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {
        	//cout << "i : " << i/n << "j : "<< j/n << endl;
        	Ir[i][j] = interpolation(i/n,j/n,I);
        }   
    }
}

////////////////////////////////////////////////////////////////////////////////////
//////////////////////      MAIN        ////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////

int main(int argc, char **argv)
{
    int nb_nv = 2;

	// creation du menu
	cout << "BINP TP 7 :  Reduction, Agrandissement et Rotation d'images " << endl ;
	cout << "--" << endl ;
	
	// chargement d'une image
	vpImage<unsigned char>  I0;
	string sIm;
    //cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
	//vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    vpImageIo::read(I0,"../images/baboon.ppm");
    afficheImage(I0,100,100,"Image originale") ;
    vpImage<unsigned char>  test(2,2,255);
    for(int i=0; i<2; i++)
    {
    	for(int j=0; j<2; j++)
    	{
    		test[i][j]= 255*i;
cout << "i : " << i << " j : "<< j << " val : " << (int)test[i][j] << endl;
    	}
    }

    /// Reduction Bilineaire
    float n = 2;
    vpImage<unsigned char>  IreduceBi(I0.getHeight()/n,I0.getWidth()/n,0);
    reductionBilineaire(I0, IreduceBi, n);
    afficheImage(IreduceBi,100,500,"Image reduite") ;
    vpImageIo::write(IreduceBi,"../resultat/IreduceBi.jpg");

    /// Reduction Simple
    vpImage<unsigned char>  IreduceSimple(I0.getHeight()/n,I0.getWidth()/n,0);
    reductionSimple(I0, IreduceSimple, n);
    afficheImage(IreduceSimple,100,500,"Image reduite") ;
    vpImageIo::write(IreduceSimple,"../resultat/IreduceSimple.jpg");
    
    /// Aggrandissement Bilineaire
    n = 2;
    vpImage<unsigned char>  IaggrandissementBi(test.getHeight()*n,test.getWidth()*n,0);
    aggrandissementBilineaire(test, IaggrandissementBi, n);
    afficheImage(IaggrandissementBi,100,500,"Image aggrandit") ;
    vpImageIo::write(IaggrandissementBi,"../resultat/IaggrandissementBi.jpg");
    
	for(int i=0; i<2*n; i++)
    {
    	for(int j=0; j<2*n; j++)
    	{
    		cout << "i : " << i << " j : "<< j << " val : " << (int)IaggrandissementBi[i][j] << endl;

    	}
    }

    // Desallocation
    I0.destroy();
    IreduceBi.destroy();
    IreduceSimple.destroy();

	cout << "Fin du programme " << endl ;
	return(0);
}

