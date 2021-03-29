/* DİK AYAK VE DİK BOYU HESABI */

// Verilenler: xa, xb,xc, ya, yb, yc; İstenenler: p ve h
/* Çözüm: 
 * 1. Koordinatlardan (AB) ve (AC) semt açıları hesaplanır.
 * 2. (AB) için tan(alfa) = (yb - ya) / (xb - xa). Bölgeye göre (AB) elde edilir.
 * 3. (AC) için tan(alfa) = (yc - ya) / (xc - xa). Bölgeye göre (AC) elde edilir. 
 * 4. Büyük semtten küçük semt çıkarılarak A noktasındaki φ açısı hesaplanır. 
 * 5. Daha sonra AC uzunluğu AC = sqrt((yc - ya)^2 + (xc - xa)^2) formülünden hesaplanır. 
 * 6. Buluna φ açısı ve AC uzunluğu kullanılarak p dik ayağı ile h dik boyu 
 * p = AC * cos(φ)
 * h = AC * sin(φ)
 */

