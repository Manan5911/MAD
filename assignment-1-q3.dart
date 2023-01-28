import 'dart:io';

class Student{

  late String name;
  late String collegeName;
  var subjects = new Map();
  late int total;
  late int percentage;
  late String grade;

  Student(String name, String collegeName, int pMarks, int cMarks, int mMarks, int total, int percentage, String grade){
    this.name = name;
    this.collegeName = collegeName;
    this.subjects['Physics'] = pMarks;
    this.subjects['Chemistry'] = cMarks;
    this.subjects['Maths'] = mMarks;
    this.total = total;
    this.percentage = percentage;
    this.grade = grade;
  }

  void result(){
    print(this.name);
    print(this.collegeName);
    print(this.subjects);
    print(this.total);
    print(this.percentage);
    print(this.grade);
  }
}

void main(){

  String toTitle(String input) {
    final List<String> splitStr = input.split(' ');
    for (int i = 0; i < splitStr.length; i++) {
      splitStr[i] =
          "${splitStr[i][0].toUpperCase()}${splitStr[i].substring(1).toLowerCase()}";
    }
    final output = splitStr.join(' ');
    return output;
  }

  String fullCaps(String input){
    final List<String> splitStr = input.split(' ');
     for (int i = 0; i < splitStr.length; i++) {
      splitStr[i] = splitStr[i].toUpperCase();
    }
    final output = splitStr.join(' ');
    return output;
  }

  int totalMarks(int a, int b, int c){
    return a + b + c;
  }

  int percentage(int total){
    double output =  total/300;
    double output2 = output * 100;
    int percent = output2.round();
    return percent;
  }

  String gradeSystem(int percent){
    if(percent >= 90){
      return 'A';
    }
    else if(percent < 90 && percent >= 70){
      return 'B';
    }
    else if(percent < 70 && percent >= 60){
      return 'C';
    }
    else if(percent < 60 && percent >= 50){
      return 'D';
    }
    else{
      return 'E';
    }
  }

  print("Enter your name: ");
  String? inputName = stdin.readLineSync();
  String correctName = toTitle(inputName!);
  print("Enter your college name: ");
  String? inputCollegeName = stdin.readLineSync();
  String correctCollegeName = fullCaps(inputCollegeName!);
  print("Enter your Physics marks: ");
  String? inputPhysics = stdin.readLineSync();
  int physicsMarks = int.parse(inputPhysics!);
  print("Enter your Chemistry marks: ");
  String? inputChemistry = stdin.readLineSync();
  int chemistryMarks = int.parse(inputChemistry!);
  print("Enter your Maths marks: ");
  String? inputMaths = stdin.readLineSync();
  int mathsMarks = int.parse(inputMaths!);
  int total = totalMarks(physicsMarks, chemistryMarks, mathsMarks);
  print("Your total marks are: $total");
  int percent = percentage(total);
  print("Your percentage is : $percent");
  String grade = gradeSystem(percent);
  Student std = new Student(correctName, correctCollegeName, physicsMarks, chemistryMarks, mathsMarks, total, percent, grade);
  print("");
  std.result();
}