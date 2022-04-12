import 'package:nft_ui/models/bidder.dart';

class Art{
 String? imgUrl;
 String? name;
 double? price;
 String? desc;
 List<Bidder>? birds;
 List<Bidder>? history;

 Art({this.imgUrl, this.name, this.price, this.desc,this.birds,this.history});

}