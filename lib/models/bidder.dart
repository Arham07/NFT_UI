class Bidder{
  String? name;
  DateTime? date;
  num? price;
  Bidder({
   this.name,this.date,this.price
});
  static List<Bidder> generateBidder(){
    return[
      Bidder(name: 'Javed',date: DateTime.now(),price: 1.42),
      Bidder(name: 'Arham',date: DateTime.now(),price: 5.02),
      Bidder(name: 'Ahmed',date: DateTime.now(),price: 0.92),
      Bidder(name: 'Hamza',date: DateTime.now(),price: 1.66),
      Bidder(name: 'Zia',date: DateTime.now(),price: 1.32),
      Bidder(name: 'Hamaial',date: DateTime.now(),price: 2.01),
      Bidder(name: 'Yazdan',date: DateTime.now(),price: 3.42),
      Bidder(name: 'Zain',date: DateTime.now(),price: 1.12),
      Bidder(name: 'Saad',date: DateTime.now(),price: 2.42),
      Bidder(name: 'Mufti',date: DateTime.now(),price: 0.72),
      Bidder(name: 'William',date: DateTime.now(),price: 1.98),
    ];
  }
}