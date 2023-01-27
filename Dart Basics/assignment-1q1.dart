import 'dart:io';

void main(){
  //Figure out how this worked
  var myFunc = NS();
  print(myFunc());
}

Function NS(){
    print("Enter your input: ");
    String? u = stdin.readLineSync();

    void default1(){
      print("Invalid");
    }

    String dcb(){
      print("Enter your decimal number: ");
      var input = stdin.readLineSync();
      var dNum = int.parse(input!);
      var binaryNum = dNum.toRadixString(2);
      return binaryNum;
    }

    int bcd(){
      print("Enter your binary string: ");
      var input = stdin.readLineSync();
      int dNum = int.parse(input!, radix: 2);
      return dNum;
    }

    String dco(){
      print("Enter your decimal number: ");
      var input = stdin.readLineSync();
      var dNum = int.parse(input!);
      var oNum = dNum.toRadixString(8);
      return oNum;
    }

    int ocd(){
      print("Enter your octal input: ");
      var input = stdin.readLineSync();
      int dNum = int.parse(input!, radix: 8);
      return dNum;
    }

    String ocb(){
      print("Enter your octal input: ");
      var input = stdin.readLineSync();
      int dNum = int.parse(input!, radix:8);
      var bNum = dNum.toRadixString(2);
      return bNum;
    }

    String dch(){
      print("Enter your decimal number: ");
      var input = stdin.readLineSync();
      var dNum = int.parse(input!);
      var hNum = dNum.toRadixString(16);
      return hNum;
    }

    int hcd(){
      print("Enter your hexadecimal input: ");
      var input = stdin.readLineSync();
      int dNum = int.parse(input!, radix: 16);
      return dNum;
    }

    String hcb(){
      print("Enter your hexadecimal input: ");
      var input = stdin.readLineSync();
      int dNum = int.parse(input!, radix:16);
      var bNum = dNum.toRadixString(2);
      return bNum;
    }

    if(u == 'dcb'){
    return dcb;
    }
    if(u == 'bcd'){
      return bcd;
    }
    if(u == 'dco'){
      return dco;
    }
    if(u == 'ocd'){
      return ocd;
    }
    if(u == 'ocb'){
      return ocb;
    }
    if(u == 'dch'){
      return dch;
    }
    if(u == 'hcd'){
      return hcd;
    }
    if(u == 'hcb'){
      return hcb;
    }
    else{
    return default1;
    }
  }