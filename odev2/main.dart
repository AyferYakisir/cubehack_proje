import 'fonksiyonlar.dart';

void main(List<String> args) {
  Fonksiyonlar fonk = Fonksiyonlar();

  double icAcilar = fonk.icAcilar(5);
  print("İç Açılar Toplamı : $icAcilar");

  double maasHesabi = fonk.maasHesabi(6);

  print("Toplam Maaş : $maasHesabi₺ ");

  int otoparkUcreti = fonk.otoparkUcreti(5);

  print("Otopark Ücreti : $otoparkUcreti");

  double kmToMile = fonk.kmToMile(5);

  print("Toplam Mile : $kmToMile");

  fonk.dkAlan(4, 5);

  int faktoriyel = fonk.faktoriyel(6);

  print("Faktoriyel : $faktoriyel");

  fonk.eHarfi("Merhaba Benim Adım Enes");
}
