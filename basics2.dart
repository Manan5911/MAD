import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int sum = 0;
  for (int i = 0; i < args.length; i++) {
    sum = sum + int.parse(args[i]);
  }
  print("Sum of given command line arguements is ${sum}");

  String name = 'Manan';
  print(name.startsWith("Ma"));
  print(name.endsWith(name.padLeft(name.length + 4)));
  String address = "Sector 23, NCU, Gurugram, Haryana";
  print(address.split(','));
  print(address.runtimeType.runtimeType);
  stdout.writeln(address);
  // checkPalindrome();
  // stdout.write(address);
  // randomNumberGuess();
  // printFibonacci();
  // removeDuplicates();
  printBackwards();
}

checkPalindrome() {
  print("Enter the String");
  String? name = stdin.readLineSync();
  String? reversed;
  if (name != null) {
    reversed = name.split('').reversed.join();
    print(reversed.runtimeType);
    if (name == reversed) {
      print("It is a palindrome!");
    } else {
      print("It is not a Palindrome!");
    }
  }
}

randomNumberGuess() {
  Random random = new Random();
  var randomNumber = random.nextInt(100) + 1;
  var guess = null;
  do {
    print("Enter a Number :");
    var guess1 = stdin.readLineSync();
    var guess = int.parse(guess1!);
    if (guess > randomNumber) {
      print('Too High!');
    }
    if (guess < randomNumber) {
      print('Too Low');
    }
    if (guess == randomNumber) {
      print('Exactly right');
      break;
    }
  } while (guess != randomNumber);
}

printFibonacci() {
  print('How many numbers do you want to print?');
  var input = stdin.readLineSync();
  var n = int.parse(input!);
  int n1 = 0, n2 = 1, n3;
  print(n1);
  print(n2);
  for (int i = 2; i <= n; i++) {
    n3 = n1 + n2;
    print(n3);
    n1 = n2;
    n2 = n3;
  }
}

removeDuplicates() {
  List<String> names = ["Manan", "Hello", "Hi", "Hello", "Hello", "Hi"];
  List<String> uniquenames = names.toSet().toList();
  print("Original List: ${names}");
  print("Unique names list: ${uniquenames}");
}

printBackwards() {
  print("Enter the String: ");
  String? normal = stdin.readLineSync();
  String reversed = '';
  if (normal != null) {
    print(normal.split(' '));
    List<String> list = normal.split(" ");
    for (int i = list.length - 1; i >= 0; i--) {
      reversed = reversed + " " + list[i];
    }
    print(reversed);
  }
}
