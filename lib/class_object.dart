void main(){
  Building obj = Building("Xyz", 20, 50);
  obj.name = "XYZ";
  obj.noOfFlats = 12;
  print(obj.noOfFlats);
  obj.sendNotice();

  var eco = Building("CS", 30, 45);
  eco.sendNotice();
}

class Building{
  String? name;
  int? noOfFlats;
  int? totalFlats;
  List<Flats>? flats;

  Building(this.name, this.noOfFlats, this.totalFlats);

  void sendNotice(){
    print("Notice Sent");
  }
}

class Flats{
  int? flatNumber;
  int? flatType;

}