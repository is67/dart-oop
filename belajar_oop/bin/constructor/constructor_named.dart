class Mobile {
    String? name;
    String? color;
    int? prize;

    Mobile(this.name, this.color, this.prize);

    //disini Mobile() adalah named constructor
    Mobile.namedConstructor(this.name, this.color, [this.prize=0]);

    void displayMobileDetails(){
        print("Mobile name: $name.");
        print("Mobile color: $color.");
        print("Mobile prize: $prize\n");
    }
}

void main(){
    var mobile1 = Mobile("Redmi", "Black",20000);
    mobile1.displayMobileDetails();
    var mobile2 = Mobile.namedConstructor("Xiaomi", "Black");
    mobile2.displayMobileDetails();
}