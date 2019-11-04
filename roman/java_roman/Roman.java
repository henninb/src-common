public class Roman {
  public static void main(String args[]){
    System.out.println(roman(1999));
    System.out.println(roman(25));
    System.out.println(roman(954));
  }
  public static String roman(long n){
    if(n < 1) return null;
    String result = "";
    if(n >= 1000){
      result+= (copies("M",(n / 1000)));
      n%= 1000;
    }
    if(n >= 900){
      result+= "CM";
      n%= 900;
    }
    if(n >= 500){
      result+= "D";
      n%= 500;
    }
    if(n >= 400){
      result+= "CD";
      n%= 400;
    }
    if(n >= 100){
      result+= (copies("C",(n / 100)));
      n%= 100;
    }
    if(n >= 90){
      result+= "XC";
      n%= 90;
    }
    if(n >= 50){
      result+= "L";
      n%= 50;
    }
    if(n >= 40){
      result+= "XL";
      n%= 40;
    }
    if(n >= 10){
      result+= (copies("X",(n / 10)));
      n%= 10;
    }
    if(n == 9){
      result+= "IX";
      n= 0;
    }
    if(n >= 5){
      result+= "V";
      n%= 5;
    }
    if(n == 4){
      result+= "IV";
      n= 0;
    }
    result+= (copies("I",n));
    return result;
  }

  public static String copies(String a, int n){
    String result = "";
    for(int i= 0;i < n;i++,result+= a);
    return result;
  }
}
