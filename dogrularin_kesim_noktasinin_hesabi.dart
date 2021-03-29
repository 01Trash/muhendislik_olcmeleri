/* DOĞRULARIN KESİM NOKTASININ HESABI */

import 'dart:io';
import 'dart:math' as Math;

// Verilenler: xa, xb, xc, xd, ya, yb, yc, yd
/* 
A, B ,C ve D noktalarının verilmiş olan koordinatlarından;
𝑡𝑎𝑛(𝐴𝐶) = 𝑡𝑎𝑛(𝛼1) = (𝑌𝑐 - 𝑌𝑎) / (𝑋𝑐 - 𝑋𝑎)
𝑡𝑎𝑛(𝐵𝐷) = 𝑡𝑎𝑛(𝛼2) = (𝑌𝑑 - 𝑌𝑏) / (𝑋𝑑 - 𝑋𝑏)
formülleri yardımıyla hesaplanan değerler alınır.
Diğer bir şekilde de AP ve BP doğrularının;
(𝑌𝑝 − 𝑌𝑎) = 𝑡𝑎𝑛(𝛼1) (𝑋𝑝 - 𝑋𝑎)
(𝑌𝑝 − 𝑌𝑏) = 𝑡𝑎𝑛 𝛼2 (𝑋𝑝 - 𝑋𝑏)
denklemlerini birbirinden çıkararak bulduğumuz;
(𝑋𝑝 - 𝑋𝑎) = [(𝑌𝑏 - 𝑌𝑎) - (𝑋𝑏 - 𝑋𝑎) * (𝑡𝑎𝑛 𝛼2)] / [(𝑡𝑎𝑛(𝛼1)) * (𝑡𝑎𝑛(𝛼2))] 
Bundan sonra P noktasının koordinatları;
Yp = Ya + (Yp - Ya), Xp = Xa + (Xp - Xa) formülleri ile hesaplanır.
Her iki hesap şeklinde de hesap kontrolü P noktasının koordinatları yardımıyla;
tan(α1) = (Yc - Yp) / (Xc - Xp) = (Yp - Ya) / (Xp - Xa)
tan(α2) = (Yd - Yp) / (Xd - Xp) = (Yp - Yb) / (Xp - Xb)
formüllerinden yeniden hesaplanacak olan tan α1 ve tan α2 değerlerinin (1) ve (2) formüllerinden bulunmuş olan değerlere eşit olması ile sağlanır.
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
    //print(alfa_radyan);
    var alfa = Math.atan(alfa_radyan);
    print("alfa: $alfa");

    // beta semt açısının hesabı
    double beta_radyan = (yc - ya) / (xc - xa);
    //print(beta_radyan);
    var beta = Math.atan(beta_radyan);
    print("beta: $beta");

    // φ(fi) açısının hesabı 
    double fi;
    if (alfa >= beta) {
        fi = alfa - beta;
    } 
    else {
        fi = beta - alfa;
    }
    print("fi: $fi");

    // AC uzunluğunun hesabı AC = sqrt((yc - ya)^2 + (xc - xa)^2)
    double ac = Math.sqrt((yc - ya) * (yc - ya) + (xc - xa) * (xc - xa));
    print("AC: $ac");

    // p = AC * cos(φ) && h = AC * sin(φ) hesaplanması
    double p = ac * Math.cos(fi);
    print("p: $p");
    double h = ac * Math.sin(fi);
    print("h: $h");
}
