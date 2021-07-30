class Person {
  String name = 'max';
  int age = 31;
}

// dynamic type
addNumbers(num1, num2) {
  return num1 + num2;
}

// if you define the return type, should return the same
double subNumber(double num1, double num2) {
  return num1 - num2;
}

/*
 * - dynamic,
 * - types : string, int, double,
 */

main(){
  var p1 = new Person(); // Person() will also do
  print(p1);

  for(int i=0; i<5; i++) {
    var add_result = addNumbers(i, i+1);
    double sub_result = subNumber(i+1, i+0);

    print( add_result );
    print(  sub_result );
  }
}