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

}

void main() {
  var some = SimpleClass(name: "Somename");
}
