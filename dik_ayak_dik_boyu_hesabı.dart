/* DİK AYAK VE DİK BOYU HESABI */

import 'dart:io';
import 'dart:math' as Math;

// Verilenler: xa, xb, xc, ya, yb, yc; İstenenler: p ve h
/* Çözüm: 
 * 1. Koordinatlardan (AB) ve (AC) semt açıları hesaplanır.
 * 2. (AB) için tan(alfa) = (yb - ya) / (xb - xa). Bölgeye göre (AB) elde edilir.
 * 3. (AC) için tan(beta) = (yc - ya) / (xc - xa). Bölgeye göre (AC) elde edilir. 
 * 4. Büyük semtten küçük semt çıkarılarak A noktasındaki φ açısı hesaplanır. 
 * 5. Daha sonra AC uzunluğu AC = sqrt((yc - ya)^2 + (xc - xa)^2) formülünden hesaplanır. 
 * 6. Buluna φ açısı ve AC uzunluğu kullanılarak p dik ayağı ile h dik boyu 
 * p = AC * cos(φ)
 * h = AC * sin(φ)
 */

  
void main()
{ 
    // Verilen değerlerin istenilmesi
    print("xa: ");
    double xa = double.parse(stdin.readLineSync());
    print("xb: ");
    double xb = double.parse(stdin.readLineSync());
    print("xc: ");
    double xc = double.parse(stdin.readLineSync());
    print("ya: ");
    double ya = double.parse(stdin.readLineSync());
    print("yb: ");
    double yb = double.parse(stdin.readLineSync());
    print("yc: ");
    double yc = double.parse(stdin.readLineSync());

    // alfa semt açısının hesabı
    double alfa_radyan = (yb - ya) / (xb - xa);
    double atan(num alfa_radyan);
    //double alfa = Math.atan(Math.alfa_radyan);
    //print(alfa);


    // beta semt açısının hesabı
    /*double beta_radyan = (yc - ya) / (xc - xa);
    double beta = Math.atan(Math.beta_radyan);
    print(beta);*/
}

