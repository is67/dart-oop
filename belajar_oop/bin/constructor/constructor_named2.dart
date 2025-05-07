class Animal {
    String? name;
    int? age;

    //default constructor
    Animal(){
        print("Ini adalah default constructor");
    }

    //named constructor
    Animal.namedConstructor(String name, int age){
        this.name = name;
        this.age = age;
    }

    //named constructor
    Animal.namedConstructor2(String name){
        this.name = name;
    }
}

void main(){
    //disini animal adalah object dari class Animal
    Animal animal = Animal.namedConstructor("Kucing", 5);
    print("Name: ${animal.name}");
    print("Age: ${animal.age}");

    Animal animal2 = Animal.namedConstructor2("Ayam");
    print("Name: ${animal2.name}");
}