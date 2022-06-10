class Ambulance {
  Driver? driver;
  String? location;
  String? carnumber;
  String? image;
  Ambulance({this.driver, this.carnumber, this.location, this.image});
}

class Driver {
  String? name;
  String? phone;
  Driver({this.name, this.phone});
}

List<Ambulance> ambList = [
  Ambulance(
      driver: Driver(name: "Hydra Mose", phone: "+6610987665"),
      carnumber: "MMR 0023",
      location: "Cambra City",
      image: 'images/ambl.png'),
  Ambulance(
      driver: Driver(name: "Hydra Mose", phone: "+6610987665"),
      carnumber: "MMR 0023",
      location: "Cambra City",
      image: 'images/ambl.png'),
  Ambulance(
      driver: Driver(name: "Hydra Mose", phone: "+6610987665"),
      carnumber: "MMR 0023",
      location: "Cambra City",
      image: 'images/ambl.png'),
  Ambulance(
      driver: Driver(name: "Hydra Mose", phone: "+6610987665"),
      carnumber: "MMR 0023",
      location: "Cambra City",
      image: 'images/ambl.png'),
  Ambulance(
      driver: Driver(name: "Hydra Mose", phone: "+6610987665"),
      carnumber: "MMR 0023",
      location: "Cambra City",
      image: 'images/ambl.png')
];
