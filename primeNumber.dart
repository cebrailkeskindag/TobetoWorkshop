import 'dart:io';

void main(){
  //int N = 100;
  print("Değer giriniz: ");
  int? N = int.parse(stdin.readLineSync()!);

  for(int i = 2; i <= N; i++){
    kontrol(i);
  }
}
void kontrol(int sayi){
  int i, m=0, sonuc=0;
  m = sayi ~/ 2;
  for(i = 2; i <= m; i++){
    if(sayi % i == 0){
      sonuc=1;
      break;
    }
  }
  if(sonuc==0){
    print("$sayi");
  }
}