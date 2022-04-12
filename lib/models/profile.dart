import 'art.dart';
import 'bidder.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? github;
  String? desc;
  String? email;
  List<Art>? collections;
  List<Art>? creations;

  Profile(
      {this.imgUrl,
      this.name,
      this.github,
      this.desc,
      this.email,
      this.collections,
      this.creations});

  static Profile generateProfile() {
    return Profile(
      imgUrl: 'assets/images/avatar.png',
      name: 'Arham Javed',
      github: '@Arham07',
      desc:
          '3D artist from Karachi, Pakistan. His work is all\nabout balance, colors and emotions.',
      email: 'arham0726@gmail.com',
      collections: [
        Art(
            imgUrl: 'assets/images/collection1.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'This is some description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/collection2.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/collection3.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/collection4.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/collection5.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
      ],
      creations: [
        Art(
            imgUrl: 'assets/images/create1.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/create2.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/create3.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/create4.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
        Art(
            imgUrl: 'assets/images/create5.jpeg',
            name: 'Consume',
            price: 1.58,
            desc: 'Some random text of description.',
            birds: Bidder.generateBidder(),
            history: Bidder.generateBidder()),
      ],
    );
  }
}
