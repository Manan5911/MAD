import 'dart:io';

class Employee{

  late int EmpId;
  late String EmpName;
  late String EmpDept;
  late int EmpSalary;

  get getEmpId => this.EmpId;

  set setEmpId( EmpId ) => this.EmpId = EmpId;

  get getEmpName => this.EmpName;

  set setEmpName( EmpName) => this.EmpName = EmpName;

  get getEmpDept => this.EmpDept;

  set setEmpDept( EmpDept) => this.EmpDept = EmpDept;

  get getEmpSalary => this.EmpSalary;

  set setEmpSalary( EmpSalary) => this.EmpSalary = EmpSalary;

  void result()
  {
    print(this.EmpName);
    print(this.EmpId);
    print(this.EmpDept);
    print(this.EmpSalary);
    print(this.getEmpDept);
  }

  Employee(int empId, String empName, String empDept){
    this.EmpId = empId;
    this.EmpName = empName;
    this.EmpDept = empDept;
    if(empDept.compareTo('admin') == 0){
      this.EmpSalary = 60000;
    }
    if(empDept.compareTo('teamlead') == 0){
      this.EmpSalary = 85000;
    }
    if(empDept.compareTo('technical') == 0){
      this.EmpSalary = 80000;
    }
    if(empDept.compareTo('officestaff') == 0){
      this.EmpSalary = 55000;
    }
    else{
      this.EmpSalary = 50000;
    }
  }

}

void main(){
  print("Enter Your Name: ");
  String? empName = stdin.readLineSync();
  print("Enter Your ID: ");
  String? input1 = stdin.readLineSync();
  int empId = int.parse(input1!);
  print("Enter Your Department: ");
  String? empDept = stdin.readLineSync();
  Employee emp = new Employee(empId, empName!, empDept!);
  print("");
  emp.result();
}