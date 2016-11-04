#include <stdlib.h>				/* pour exit(); */
#include <stdio.h>
#include <iostream>
//#include <unistd.h>				/* pour SEEK_END */
#include <math.h>
#include "fft-a-prog.h"
#include "module-fft.h"





/******************** calcul de module complexe ********* **********************
  entrees:
  double *x;	  vecteur d'entree partie reelle
  double *y;	  vecteur d'entree partie imaginaire
  int  n;		  dimension signal
  sorties:        vecteur contenant le module
*********************************************************************************/

void module(double *x,double *y,int n,double *mod)
{
	for(int i=0; i<n; i++)
	{
		mod[i]=sqrt(x[i]*x[i] + y[i]*y[i]);
	}
}

/******************** calcul du complementaire ********* **********************
  entrees:
  double *x;	  vecteur d'entree partie reelle
  double *y;	  vecteur d'entree partie imaginaire
  sorties:        vecteur contenant le complementaire
*********************************************************************************/

void comple(double *x,double *y,int n)
{
	for(int i=0; i<n; i++)
	{
		y[i] = -y[i];
	}
}

/******************** transpose de l'image ********* **********************
  entrees:
  double *x;	  vecteur d'entree partie reelle
  double *y;	  vecteur d'entree partie imaginaire
  sorties:        vecteur contenant la transpose
*********************************************************************************/

void transpose(double *x,double *y,int n)
{
	for(int k=0; k<n*n; k++)
	{
		int i = k/n;
		int j = k%n;
		int indice1 = i + j*n;
		int indice2 = j + i*n;

		if(i>j)
		{
			int temp = x[indice2];
			x[indice2] = x[indice1];
			x[indice1] = temp;

			temp = y[indice2];
			y[indice2] = y[indice1];
			y[indice1] = temp;
		}	
	}
}

/******************* procedure FFT_INV  ***************************************
  double *x;	  vecteur d'entree/sortie partie reelle
  double *y;	  vecteur d'entree/sortie partie imaginaire
  int     n;	  dimension signal
  role : calcule la fft inverse = 1/n(fft(x*))*
*********************************************************************************/


void fft_inv (double *x,double *y,int n)
{
	comple(x, y, n);

	fft(x,y,n);

	comple(x, y, n);

	for(int i=0; i<n; i++)
	{
		x[i] = x[i]/(double)n;
		y[i] = y[i]/(double)n;
	}
}



/******************* procedure FFT_2D  ***************************************
  double *x;	  vecteur entree/sortie partie reelle du signal 2D
  double *y;	  vecteur d'entree/sortie partie imaginaire du signal 2D
  int     n;	  dimension du signal = nombre de lignes = nombre de colonnes
  role : calcule la fft 2D = 1/n * fft(colonnes(fft(lignes))

  ATTENTION: faire un bit reverse sur les lignes avant de faire une FFT
             sur les lignes.
             faire un bit reverse sur les colonnes avant de faire une FFT sur
	     les colonnes.
  *********************************************************************************/


void fft_2D (double *x,double *y,int n)
{
	for(int i=0; i<n; i++)
	{
		bit_reverse(x+i*n,n);
		bit_reverse(y+i*n,n);
		fft(x+i*n, y+i*n, n);
	}
	transpose(x,y,n);
	for(int i=0; i<n; i++)
	{
		bit_reverse(x+i*n,n);
		bit_reverse(y+i*n,n);
		fft(x+i*n, y+i*n, n);
	}
	transpose(x,y,n);
}


/******************* procedure FFT_2D_INV  ***************************************
  double *x;	  vecteur entree/sortie partie reelle du signal 2D
  double *y;	  vecteur d'entree/sortie partie imaginaire du signal 2D
  int     n;	  dimension du signal = nombre de lignes = nombre de colonnes
  role : calcule la fft inverse = (fft_2D(x*))*
*********************************************************************************/


void fft_2D_inv (double *x,double *y,int n)
{
	comple(x, y, n*n);

	fft_2D(x,y,n);

	comple(x, y, n*n);

	for(int i=0; i<(n*n); i++)
	{
		x[i] = x[i]/(double)(n*n);
		y[i] = y[i]/(double)(n*n);
	}
}


/******************* EQM  ***************************************
  double *x;	  vecteur entree/sortie partie reelle du signal 2D
  double *y;	  vecteur d'entree/sortie partie imaginaire du signal 2D
  int     n;	  dimension du signal = nombre de lignes = nombre de colonnes
  role : calcule la fft inverse = (fft_2D(x*))*
*********************************************************************************/

void eqm (double *x1, double*x2, int n)
{
	int val = 0;
	for(int i=0; i<n*n; i++)
	{
		int toto = x1[i] - x2[i];
		val += toto * toto;
	}
	printf("%d\n", val/(int)(n*n));
}

