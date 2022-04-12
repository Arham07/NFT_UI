import 'package:flutter/material.dart';
import 'package:nft_ui/models/art.dart';
import 'package:nft_ui/models/profile.dart';

class ArtInfo extends StatelessWidget {
  ArtInfo({Key? key, required this.art}) : super(key: key);

  final Art art;
  final Profile profile = Profile.generateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: const TextStyle(
                fontFamily: 'Lora', fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              buildIconText(
                0,
                profile.imgUrl!,
                'Creator',
                profile.github!.substring(1),
              ),
              const SizedBox(
                width: 80,
              ),
              buildIconText(
                8,
                'assets/images/eth.png',
                'Current bid',
                '${art.price!} ETH',
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            art.desc!,
            style: const TextStyle(
                wordSpacing: 3, height: 1.3, color: Colors.black87),
          )
        ],
      ),
    );
  }

  Row buildIconText(double padding, String imgUrl, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
              color: Colors.grey.shade200, shape: BoxShape.circle),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black45),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.black45,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
