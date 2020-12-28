/*

  #Blender Badge
  by @akirasan

  Para programar el ATTiny85:
  - Arduno UNO con firmware cargado "ArduinoISP" (se encuentra en el IDE de Arduino como ejemplo)
  - Seleccionar la placa ATTiny85 (Procesador ATTiny85 / Internal 16MHz)
  - Opcional/Recomendable: La primera vez quemar bootloader antes del programa
  - Programador "Arduino as ISP"

*/

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h>
#endif

#define PIN            3
#define PIN_BOTON      2
#define NUMPIXELS      8

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);


byte click_boton = 0;
unsigned int estado_boton;
boolean demo_mode = false;






void showStrip() {
  pixels.show();
}

void setPixel(int Pixel, byte red, byte green, byte blue) {
  pixels.setPixelColor(Pixel, pixels.Color(red, green, blue));
}

void setAll(byte red, byte green, byte blue) {
  for (int i = 0; i < NUMPIXELS; i++ ) {
    setPixel(i, red, green, blue);
  }
  showStrip();
}


void setAllExternal(byte red, byte green, byte blue) {
  for (int i = 1; i < NUMPIXELS; i++ ) {
    setPixel(i, red, green, blue);
  }
  showStrip();
}


void FadeInOut(byte red, byte green, byte blue, byte velocidad) {
  float r, g, b;

  for (int k = 0; k < 256; k = k + 1) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setAll(r, g, b);
    showStrip();
    delay(velocidad);
  }

  for (int k = 255; k >= 0; k = k - 2) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setAll(r, g, b);
    showStrip();
    delay(velocidad);
  }
}


void FadeIn (byte pixel, byte red, byte green, byte blue, byte velocidad) {
  float r, g, b;

  for (int k = 0; k < 256; k = k + 1) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setPixel(pixel, r, g, b);
    showStrip();
    delay(velocidad);
  }
}


void FadeOut(byte pixel, byte red, byte green, byte blue, byte velocidad) {
  float r, g, b;

  for (int k = 255; k >= 0; k = k - 2) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setPixel(pixel, r, g, b);
    showStrip();
    delay(velocidad);
  }
}



void FadeInExternal (byte red, byte green, byte blue, byte velocidad) {
  float r, g, b;

  for (int k = 0; k < 256; k = k + 1) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setAllExternal(r, g, b);
    delay(velocidad);
  }
}


void FadeOutExternal(byte red, byte green, byte blue, byte velocidad) {
  float r, g, b;

  for (int k = 255; k >= 0; k = k - 2) {
    r = (k / 256.0) * red;
    g = (k / 256.0) * green;
    b = (k / 256.0) * blue;
    setAllExternal(r, g, b);
    delay(velocidad);
  }
}






// entra en modo test de leds
void efecto0() {
  for (byte i = 0; i < 15; i++) {
    pixels.setPixelColor(0, pixels.Color(0, 0, 100));
    pixels.show();
    delay(50);
    pixels.setPixelColor(0, pixels.Color(0, 0, 0));
    pixels.show();
    delay(50);
  }
}



void efecto1() {
  FadeIn (0, 0, 0, 255, 5);
  delay(250);
  FadeInExternal (127, 55, 20, 5);
  delay(1000);
  FadeOutExternal (127, 55, 20, 5);
  delay(250);
  FadeOut (0, 0, 0, 255, 10);

}


void efecto2() {
  FadeIn (0, 0, 0, 355, 2);
  FadeOut (0, 0, 0, 355, 10);
}


void efecto3() {
  for (byte pixel = 0; pixel < NUMPIXELS; pixel++) {
    FadeIn (pixel, 255, 255, 255, 0);
  }
  for (byte pixel = 0; pixel < NUMPIXELS; pixel++) {
    FadeOut (pixel, 255, 255, 255, 5);
  }
}


void efecto4() {
  FadeOut (0, 255, 25, 255, 5);
}


void efecto5() {
  FadeInOut(255, 112, 40, 5);
}


void loop_color(byte r, byte g, byte b) {
  for (byte i = 0; i < NUMPIXELS; i++) {
    pixels.setPixelColor(i, pixels.Color(r, g, b));
    pixels.show();
    delay(150);
    pixels.setPixelColor(i, pixels.Color(0, 0, 0));
    pixels.show();
  }

}

void check_all_leds() {
  loop_color(255, 0, 0);
  loop_color(0, 255, 0);
  loop_color(0, 0, 255);
  loop_color(255, 255, 255);

}


void setup() {
  // This is for Trinket 5V 16MHz, you can remove these three lines if you are not using a Trinket
#if defined (__AVR_ATtiny85__)
  if (F_CPU == 16000000) clock_prescale_set(clock_div_1);
#endif

  pinMode(PIN, OUTPUT);
  pixels.begin();
  pixels.setBrightness(50);
  pixels.show();

  estado_boton = analogRead(PIN_BOTON);
  delay(100);
  if (estado_boton == 1023 ) {
    demo_mode = true;
    delay(500);
    efecto0();
    check_all_leds();

  }


}


// Colores GRB
void loop() {
  //efecto3();



  if (!demo_mode) {
    estado_boton = analogRead(PIN_BOTON);

    // click boton
    if (estado_boton == 1023 ) {
      click_boton++;
      delay(500);
    }

    switch (click_boton) {
      case 1:
        efecto1();
        break;
      case 2:
        efecto2();
        break;
      case 3:
        efecto3();
        break;
      case 4:
        efecto4();
        break;
      case 5:
        efecto5();
        break;
      default:
        click_boton = 1;
        break;
    }
  }
  else {
    efecto1();
    for (byte i = 0; i < 100; i++) {
      efecto4();
    }
    efecto2();
    efecto3();
    for (byte i = 0; i < 100; i++) {
      efecto4();
    }
    efecto5();
    for (byte i = 0; i < 100; i++) {
      efecto4();
    }
  }



}
