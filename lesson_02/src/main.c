#include <SDL.h>
#include <stdio.h>

const int SCREEN_WIDTH = 640;
const int SCREEN_HEIGHT = 480;

int main(int argc, char** argv)
{
  SDL_Window* window = NULL;
  SDL_Surface* screenSurface = NULL;
  SDL_Surface* test_img = NULL;

  if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
    printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
    return -1;
  }

  window = SDL_CreateWindow( "SDL Tutorial", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN );
  if( window == NULL ){
    printf( "Window could not be created! SDL_Error: %s\n", SDL_GetError() );
    return -1;
  }

  // TODO: Use the real lazy foo code
  // http://lazyfoo.net/tutorials/SDL/02_getting_an_image_on_the_screen/index.php

  // Setup
  screenSurface = SDL_GetWindowSurface( window );
  test_img = SDL_LoadBMP("hello_world.bmp");

  // Draw
  SDL_BlitSurface(test_img, NULL, screenSurface, NULL);
  SDL_UpdateWindowSurface( window );
  SDL_Delay( 2000 );

  // Quit
  SDL_FreeSurface( test_img );
  SDL_DestroyWindow( window );
  SDL_Quit();

  return 0;
}
