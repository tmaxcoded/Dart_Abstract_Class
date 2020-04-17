import 'package:AbstractLesson/AbstractLesson.dart' as AbstractLesson;

abstract class Animal {
  void breath();

  void reproduce(){
    print("Give birth to the offspring");
  }
}

class Person implements Animal{
  String name; num age;
  Person(this.name, this.age);

  void viewName(){
    print(name);
  }

  @override
  void breath() {
    print('$name is breathing..');
  }

  @override
  void reproduce() {
    // TODO: implement reproduce
    print('$name is 40 years ol and gave birth to Yomi');
  }
}

class Actor extends Person {
  String professionalism;
  Actor(String name, int age,this.professionalism): super(name,age);
  @override
  void viewName() {
    // TODO: implement viewName
    print('$name');
  }
}
void main(List<String> arguments) {
  var firsPerson = new Person("Desmon Elliot", 35);
  firsPerson.viewName();
  firsPerson.breath();
  firsPerson.reproduce();

  var BollyWood = new Actor("Kai kaji num", 23,"commedian");
  BollyWood.reproduce();
  BollyWood.breath();
  BollyWood.viewName();

}
