import 'dart:io';

void main(){
  print("Değer giriniz: ");
  int? N = int.parse(stdin.readLineSync()!);
  print("-----------------------");

  int deger = 1;
  for (int i = 1; i <= N; i++) {
    deger *= i;
  }
  print("Sonuç: $deger");

}