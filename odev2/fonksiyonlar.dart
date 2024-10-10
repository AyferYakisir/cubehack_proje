class Fonksiyonlar {
  // 1. Problem : Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri döndüren metodu yazınız
  // İç Açılar toplamı =((kenar sayısı - 2) * 180) / kenar sayısı

  double icAcilar(int kenarSayisi) {
    double icAcilarToplami = ((kenarSayisi - 2) * 180) / kenarSayisi;
    return icAcilarToplami;
  }

  // 2.Problem : Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
  // • 1 günde 8 saat çalışılabilir.
  // • Çalışma saat ücreti : 40 €
  // • Mesai saat ücreti : 80も
  // • 150 saat üzeri mesai sayılır.

  double maasHesabi(int gunSayisi) {
    const int saatUcreti = 40;
    const int gunlukSaat = 8;
    const int mesaiUcreti = 80;
    const int mesaiLimit = 150;

    int toplamSaat = gunSayisi * gunlukSaat;

    double maas;

    if (toplamSaat > mesaiLimit) {
      int mesai = toplamSaat - mesaiLimit;
      maas = (mesai * mesaiUcreti.toDouble()) + (mesaiLimit * saatUcreti);
    } else {
      maas = toplamSaat * saatUcreti.toDouble();
    }
    return maas;
  }

  // 3. Problem : Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
  // 1 saat 50も
  // • 1 saat aşımından sonra her 1 saat, 10 'dir.

  int otoparkUcreti(int saat) {
    int ucret = 50;
    const int zamanAsimiUcreti = 10;

    if (saat > 1) {
      ucret += (saat - 1) * zamanAsimiUcreti;
    }

    return ucret;
  }

  // 4. Problem : Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız. Mile = Km x 0.621

  double kmToMile(double km) {
    double mile;
    mile = km * 0.621;
    return mile;
  }

  // 5. Problem : Kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yazınız.

  void dkAlan(int kisa, int uzun) {
    int alan = kisa * uzun;
    print("Dikdörtgenin alanı : $alan");
  }

  // 6. Problem : Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.

  int faktoriyel(int sayi) {
    int sonuc = 1;

    for (var i = 1; i < sayi; i++) {
      sonuc *= i;
    }
    return sonuc;
  }

  // 7. Problem : Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren bir metod yazınız.

  void eHarfi(String kelime) {
    int count = 0;

    for (var i = 0; i < kelime.length; i++) {
      if (kelime[i].toLowerCase() == 'e') {
        count++;
      }
    }

    print("$count kadar kez E harfi içermektedir.");
  }
}
