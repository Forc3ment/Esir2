#include <iostream>
#include <visp/vpConfig.h>
#include <visp/vpDebug.h>

#include <visp/vpImage.h>
#include <visp/vpImageIo.h>
#include <visp/vpDisplayX.h>

using namespace std;

#define PI           3.14159265  /* pi */

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
     int px = (int)x; // floor of x
     int py = (int)y; // floor of y

     if(x == px && y == py)
     {
        return I[px][py];
     }

	 float fx = x - px;
     float fy = y - py;
     float fx1 = 1 - fx;
     float fy1 = 1 - fy;
      
     double w1 = 1/sqrt(fx*fx+fy*fy);
     double w2 = 1/sqrt(fx1*fx1+fy*fy);
     double w3 = 1/sqrt(fx*fx+fy1*fy1);
     double w4 = 1/sqrt(fx1*fx1+fy1*fy1);

    int res;
    double num;
    double den;


    if(px == I.getHeight()-1)
    {
        num = (w1*I[px][py]+w3*I[px][py+1]);
        den = (w1+w3);

    }else if(py == I.getWidth()-1){

        num = (w1*I[px][py]+w2*I[px+1][py]);
        den = (w1+w2);
       
    }else{
        num = (w1*I[px][py]+w2*I[px+1][py]+w3*I[px][py+1]+w4*I[px+1][py+1]);
        den = (w1+w2+w3+w4);
    }
     
    res = (int)(num / den);
    
    return res;

}

void agrandissementSimple(vpImage<unsigned char> &I, vpImage<unsigned char> &Ir, int n)
{
    unsigned int height = Ir.getHeight();
    unsigned int width = Ir.getWidth();

    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {
            int px = i/n;
            int py = j/n;
            Ir[i][j] = I[px][py];
        }   
    }
}

void agrandissementSimpleC(vpImage<vpRGBa> &I, vpImage<vpRGBa> &Ir, int n)
{
    unsigned int height = Ir.getHeight();
    unsigned int width = Ir.getWidth();

    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {
            int px = (int)i/n; // floor of x
            int py = (int)j/n; // floor of y

            Ir[i][j].R = (int)I[px][py].R;
            Ir[i][j].G = (int)I[px][py].G;
            Ir[i][j].B = (int)I[px][py].B;
        }   
    }
}

void agrandissementBilineaireNDG(vpImage<unsigned char> &I, vpImage<unsigned char> &Ir, double n)
{
 	unsigned int height = Ir.getHeight();
    unsigned int width = Ir.getWidth();

    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {

            int px = i/n;
            int py = j/n;
            Ir[i][j] = I[px][py];

        }   
    }
}


void agrandissementBilineaireC(vpImage<vpRGBa> &I, vpImage<vpRGBa> &Ir, double n)
{
    unsigned int height = Ir.getHeight();
    unsigned int width = Ir.getWidth();

    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {


                float x = i/n;
                float y = j/n;

                 int px = (int)x; // floor of x
                 int py = (int)y; // floor of y

                //emplacement des pixels originaux
                 if(x == px && y == py)
                 {
                    Ir[i][j].R = (int)I[px][py].R;
                    Ir[i][j].G = (int)I[px][py].G;
                    Ir[i][j].B = (int)I[px][py].B;
                 }else{


                float fx = x - px;
                float fy = y - py;
                 float fx1 = 1 - fx;
                 float fy1 = 1 - fy;
                  

                // défini les poids
                 double w1 = 1/sqrt(fx*fx+fy*fy);
                 double w2 = 1/sqrt(fx1*fx1+fy*fy);
                 double w3 = 1/sqrt(fx*fx+fy1*fy1);
                 double w4 = 1/sqrt(fx1*fx1+fy1*fy1);

                int resR;
                int resG;
                int resB;
                double numR;
                double numG;
                double numB;
                double den;


                if(px == I.getHeight()-1)
                {
                    numR = (w1*I[px][py].R+w3*I[px][py+1].R);
                    numG = (w1*I[px][py].G+w3*I[px][py+1].G);
                    numB = (w1*I[px][py].B+w3*I[px][py+1].B);
                    den = (w1+w3);

                }else if(py == I.getWidth()-1){

                    numR = (w1*I[px][py].R+w2*I[px+1][py].R);
                    numG = (w1*I[px][py].G+w2*I[px+1][py].G);
                    numB = (w1*I[px][py].B+w2*I[px+1][py].B);
                    den = (w1+w2);
                   
                }else{
                    numR = (w1*I[px][py].R+w2*I[px+1][py].R+w3*I[px][py+1].R+w4*I[px+1][py+1].R);
                    numG = (w1*I[px][py].G+w2*I[px+1][py].G+w3*I[px][py+1].G+w4*I[px+1][py+1].G);
                    numB = (w1*I[px][py].B+w2*I[px+1][py].B+w3*I[px][py+1].B+w4*I[px+1][py+1].B);
                    den = (w1+w2+w3+w4);
                }
                 
                resR = (int)(numR / den);
                resG = (int)(numG / den);
                resB = (int)(numB / den);

                Ir[i][j].R = resR;
                Ir[i][j].G = resG;
                Ir[i][j].B = resB;

                 }

                 
                
        }   
    }
}

void rotationBasic(vpImage<unsigned char> &I, vpImage<unsigned char> &D, float alpha)
{
	int height = I.getHeight();
    int width = I.getWidth();
    int height2 = D.getHeight();
    int width2 = D.getWidth();

    // Calcul des centres
    double centerx = height/2.0; if(height%2==0)centerx-=0.5;
    double centery = width/2.0; if(width%2==0)centery-=0.5;
    double centerx2 = height2/2.0;
    double centery2 = width2/2.0;

    // En parcourant I, création des points de D en fonction des point de I
    int newi , newj;
    for(int i=0; i<height; i++)
    {
        for(int j=0; j<width; j++)
        {
        	newi = floor( cos(alpha)* (i-centerx) - sin(alpha)*(j-centery) + centerx2 );
        	newj = floor( sin(alpha)* (i-centerx) + cos(alpha)*(j-centery) + centery2 );
        	
        	D[newi][newj] = I[i][j];
        	
        }   
    }
}

void rotationInverted(vpImage<unsigned char> &I, vpImage<unsigned char> &D, float alpha)
{
	int height = I.getHeight();
    int width = I.getWidth();
    int height2 = D.getHeight();
    int width2 = D.getWidth();

    // Calcul des centres
    double centerx = height/2.0; if(height%2==0)centerx-=0.5;
    double centery = width/2.0; if(width%2==0)centery-=0.5;
    double centerx2 = height2/2.0; if(height2%2==0)centerx-=0.5;
    double centery2 = width2/2.0; if(width2%2==0)centery-=0.5;

    // En parcourant D, création des points de D en fonction des point de I
    int newi , newj;
    for(int i=0; i<height2; i++)
    {
        for(int j=0; j<width2; j++)
        {
        	newi = floor( cos(-alpha)* (i-centerx2) - sin(-alpha)*(j-centery2) + centerx );
        	newj = floor( sin(-alpha)* (i-centerx2) + cos(-alpha)*(j-centery2) + centery );

        	if(newi >= 0 && newj >= 0 && newi<height && newj<width) 
				D[i][j]=I[newi][newj];
        }   
    }
}

void rotationBilineaire(vpImage<unsigned char> &I, vpImage<unsigned char> &D, float alpha)
{
	int height = I.getHeight();
    int width = I.getWidth();
    int height2 = D.getHeight();
    int width2 = D.getWidth();

    // Calcul des centres
    double centerx = height/2.0; if(height%2==0)centerx-=0.5;
    double centery = width/2.0; if(width%2==0)centery-=0.5;
    double centerx2 = height2/2.0; if(height2%2==0)centerx-=0.5;
    double centery2 = width2/2.0; if(width2%2==0)centery-=0.5;

    // En parcourant D, création des points de D en fonction de l'interpolation des point de I
    double newi , newj;
    for(int i=0; i<height2; i++)
    {
        for(int j=0; j<width2; j++)
        {
        	newi = cos(-alpha)* (i-centerx2) - sin(-alpha)*(j-centery2) + centerx ;
        	newj = sin(-alpha)* (i-centerx2) + cos(-alpha)*(j-centery2) + centery ;
        	
        	if(newi >= 0 && newj >= 0 && newi<height && newj<width) 
				D[i][j]=interpolation(newi,newj,I);
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
    vpImage<vpRGBa>  I1;
	string sIm;
    //cout << "Nom de l'image : "; cin >> sIm; // Ex: ../images/lena.pgm
	//vpImageIo::read(I0,sIm) ;

    // A decommenter pour debugger
    vpImageIo::read(I0,"../images/baboon.ppm");
    vpImageIo::read(I1,"../images/baboon.ppm");
    afficheImage(I0,100,100,"Image originale") ;

    /*
    // Reduction Bilineaire
    float n = 2;
    vpImage<unsigned char>  IreduceBi(I0.getHeight()/n,I0.getWidth()/n,0);
    reductionBilineaire(I0, IreduceBi, n);
    afficheImage(IreduceBi,100,500,"Image reduite") ;
    vpImageIo::write(IreduceBi,"../resultat/IreduceBi.jpg");

    /// Reduction Simple
    vpImage<unsigned char>  IreduceSimple(I0.getHeight()/n,I0.getWidth()/n,0);
    reductionSimple(I0, IreduceSimple, n);
    afficheImage(IreduceSimple,100,500,"Image reduite") ;
    vpImageIo::write(IreduceSimple,"../resultat/IreduceSimple.jpg");*/
    
 //    /// Aggrandissement Bilineaire
 //    int n = 3;
 //    vpImage<unsigned char>  IagrandissementBi(I0.getHeight()*n,I0.getWidth()*n,0);
 //    agrandissementBilineaireNDG(I0, IagrandissementBi, n);
 //    afficheImage(IagrandissementBi,100,500,"Image aggrandie") ;
 //    vpImageIo::write(IagrandissementBi,"../resultat/IaggrandissementBi.jpg");

 //    /// Aggrandissement Bilineaire Couleur
 //    vpImage<vpRGBa>  IagrandissementBiC(I1.getHeight()*n,I1.getWidth()*n);
 //    agrandissementBilineaireC(I1, IagrandissementBiC, n);
 //    afficheImage(IagrandissementBiC,100,500,"Image aggrandie") ;
 //    vpImageIo::write(IagrandissementBiC,"../resultat/IaggrandissementBiC.jpg");

 //    /// Aggrandissement Simple
 //    vpImage<unsigned char>  IragrSimple(I0.getHeight()*n,I0.getWidth()*n);
 //    agrandissementSimple(I0, IragrSimple, n);
 //    afficheImage(IragrSimple,100,500,"Image agrandie") ;
 //    vpImageIo::write(IragrSimple,"../resultat/IragrSimple.jpg");
	
	// /// Aggrandissement Simple
 //    vpImage<vpRGBa>  IragrSimpleC(I1.getHeight()*n,I1.getWidth()*n);
 //    agrandissementSimpleC(I1, IragrSimpleC, n);
 //    afficheImage(IragrSimpleC,100,500,"Image agrandie") ;
 //    vpImageIo::write(IragrSimpleC,"../resultat/IragrSimpleC.jpg");
    
    
    float alpha = PI/3;
    int newHeight = floor( abs(I0.getHeight()*cos(alpha)) + abs(I0.getWidth()*sin(alpha)));
    int newWidth = floor( abs(I0.getHeight()*sin(alpha)) + abs(I0.getWidth()*cos(alpha)));	
	/// Rotation Simple
    vpImage<unsigned char>  IrotationBasic(newHeight,newWidth,0);
    rotationBasic(I0, IrotationBasic, alpha);
    afficheImage(IrotationBasic,100,500,"Image tournee") ;
    vpImageIo::write(IrotationBasic,"../resultat/IrotationBasic.jpg");
    /// Rotation inversee
    vpImage<unsigned char>  IrotationInverted(newHeight,newWidth,0);
    rotationInverted(I0, IrotationInverted, alpha);
    afficheImage(IrotationInverted,100,500,"Image tournee") ;
    vpImageIo::write(IrotationInverted,"../resultat/IrotationInverted.jpg");
	/// Rotation Bilinéaire
    vpImage<unsigned char>  IrotationBi(newHeight,newWidth,0);
    rotationBilineaire(I0, IrotationBi, alpha);
    afficheImage(IrotationBi,100,500,"Image tournee") ;
    vpImageIo::write(IrotationBi,"../resultat/IrotationBi.jpg");

    // Desallocation
    I0.destroy();
    // IreduceBi.destroy();
    // IreduceSimple.destroy();
    // IagrandissementBi.destroy();
    // IagrandissementBiC.destroy();
    // IragrSimple.destroy();
    // IragrSimpleC.destroy();
    IrotationBasic.destroy();
    IrotationInverted.destroy();
    IrotationBi.destroy();

	cout << "Fin du programme " << endl ;
	return(0);
}