import 'package:flutter/material.dart';
import 'package:nft_ui/models/art.dart';

class DetailBanner extends StatelessWidget {
  DetailBanner({Key? key, required this.art}) : super(key: key);

  final Art art;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.05,
            MediaQuery.of(context).size.height * 0.065,
            MediaQuery.of(context).size.width * 0.05,
            MediaQuery.of(context).size.height * 0.02,
          ),
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                art.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            right: 30,
            bottom: 30,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.pink,
              ),
            ))
      ],
    );
  }
}
