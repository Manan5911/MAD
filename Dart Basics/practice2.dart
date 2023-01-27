void main(){
  List<int> list = [256,478,527,568,754,235];
  print(list);
  // List<int> reversed = list.reversed.toList();
  // print(reversed);
  List<int> newList = [];
  for (var i = 0; i < list.length; i++) {
    int num = reversed1(list[i]);
    newList.insert(i, num);
  }
  print(newList);

  print(list.first);
  print(list.isEmpty);
  print(list.isNotEmpty);
  print(list.length);
  print(list.last);
  print(list.reversed);
  // print(list.single);
  list.add(777);
  print(list);
  list.addAll([888,999,100]);
  print(list);
  list.insert(0,101);
  print(list);
  list.insertAll(1, [444,555]);
  print(list);
  }

reversed1(num){
  int revNum = 0;
  while(num!=0){
    int remainder = (num%10).toInt();
    revNum = revNum*10 + remainder;
    num = (num/10).toInt();
  }
  // print(num.runtimeType);
  return revNum;
}