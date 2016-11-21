#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include "imagesRW.h"



// Calcul du gradient de imgIn  (Attention aux bords)
void IMgradient (unsigned char *imgIn, unsigned char *imgOut, int sizeX, int sizeY)
{
	for(int i=0; i<sizeX; i++)
	{
		for(int j=0; j<sizeY; j++)
		{
			unsigned char dx = (imgIn[i*sizeX+j]-imgIn[(i+1)*sizeX+j])/2;
			unsigned char dy = (imgIn[i*sizeX+j]-imgIn[i*sizeX+j+1])/2; 
			imgOut[i*sizeX+j]= sqrt(dx*dx
		}
	}
}

// Recherche du chemin d'energie minimale dans imgIn 
void min_path(unsigned char *imgIn, int *posX, int *posY, int sizeX, int sizeY) 
{


}



int main(int argc, char **argv)
{
 
  // Lecture de l'image à redimensionner
  
  // Lecture d'un masque si besoin

  // 1) Calculer la matrice d'énergie de l'image 



  // 2) Déterminer le chemin d'énergie minimale 



  // 3) L'enlever de l'image 



    return 0;
}
