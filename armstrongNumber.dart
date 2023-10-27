
import 'dart:io';
import 'dart:math';
void main(){
  
  int? num;
  print('Kontrol etmek istediğiniz sayıyı buraya giriniz:');
  num = int.parse(stdin.readLineSync()!);//kullanıcıdan veri almak
 
  isArmString(num);

}

void isArmString(int number){
  
  int temp,digits =0, last = 0, sum = 0;//değişkenler tanımlanır.

  temp = number;

  while(temp>0){//0'dan büyüklük şartı ile döngü başlar.
    temp = temp~/10;//basamak sayısını kontrol etmek için 10'a bölünür.
    digits++;
  }

  temp = number;

  while(temp>0){
    last = temp % 10;
    sum = sum + pow(last, digits) as int;
    temp = temp~/10;   
  }

  if(number == sum){
    print("$number bir Armstrong sayısıdır.");
  }else{
    print("$number bir Armstrong sayısı değildir.");
  }
}
