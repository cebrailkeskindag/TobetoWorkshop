
import 'dart:io';
import 'dart:math';
void main(){
  
  int? num;
  print('Enter A Number to check ARMSTRONG or NOT ARMSTRONG NUMBER');
  
  num = int.parse(stdin.readLineSync()!);
 
  isArmString(num);

}


void isArmString(int number){
  
  int temp,digits =0, last = 0, sum = 0;

  temp = number;

  while(temp>0){
    temp = temp~/10;
    digits++;
  }

  temp = number;

  while(temp>0){
    last = temp % 10;
    sum = sum + pow(last, digits) as int;
    temp = temp~/10;   
  }
  print(digits);

  if(number == sum){
    print("IT'S A ARMSTRONG NUMBER");
  }else{
    print("IT'S NOT ARMSTRONG NUMBER");
  }
}

/*
Verilen sayının Armstrong Sayı olup olmadığını bulan fonksiyonu yazınız ve test ediniz.

Armstrong Sayı Nedir ?
N haneli bir sayının basamaklarının n’inci üstlerinin toplamı, sayının kendisine eşitse, böyle sayılara Armstrong sayı denir.


Örneğin 407 = (4^3)+ (0^3)+(7^3) = 64+0+343 = 407  bir armstrong sayıdır.
*/