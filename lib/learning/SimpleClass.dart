class SimpleClass {

  // ? mark indicates that the variable can be null
  late String? name;
  late int? age;

  // shortcut of constructor
  SimpleClass({this.name, this.age});

// like java
// SimpleClass(String name, int age) {
//   this.name = name;
//   this.age = age;
// }

// named
// providing a default value to the age
// that means it is optional to pass the age while instantiating an object
// @required annotation means that the argument is necessary
// SimpleClass({String? name, int? age = 90}) {}

// different constructor
  // classA is like a surname
  // main name is same as the class name
  // by adding . we can make variations of constructor
  SimpleClass.classA(this.name);
}

void main() {
  var some = SimpleClass(name: "Somename"); // calling the default constructor
  var someClassA =
      SimpleClass.classA("some class A"); // calling a different constructor
}
