import 'package:flutter/material.dart';
import 'package:nft_ui/models/profile.dart';

class SliverBox extends StatelessWidget {
  SliverBox({Key? key, required this.profile}) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(profile.imgUrl!),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              profile.name!,
              style: const TextStyle(
                  fontFamily: 'Lora',
                  fontSize: 22,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.02,
            ),
            Text(
              profile.github!,
              style: const TextStyle(
                  fontFamily: 'Lora', fontSize: 18, color: Colors.blue),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              profile.desc!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16, color: Colors.black54, height: 1.5),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              profile.email!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Lora',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.03,
            ),
          ],
        ));
  }
}
