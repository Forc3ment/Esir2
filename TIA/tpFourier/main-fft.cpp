#include <stdio.h>
#include "imagesRW.h"
#include "fft-a-prog.h"

int main(int argc,char **argv)
{
  
  /* Voici les différents tests à effectuer
  TEST1D();
  ou
  TEST2D();
  ou  
  FFT_IM();
  ou 
  FFT_IM_debruitee(int test)
  ou 
  FFT_IM_filtre_ideal(double seuil)
  ou
  FFT_IM_filtre_Butterworth(double seuil, int ordre);
  ou
  FFT_IM_filtre_Gaussien(double seuil);
  ou
  FFT_IM_filtre_Gaussien_ani(double seuilx, double seuily);
  */
  
  FFT_IM_debruitee(19);

  return (0);
}
