import 'dart:math';
import 'package:flutter/material.dart';
import 'package:nft_ui/models/bidder.dart';
import 'package:nft_ui/models/colors.dart';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  BidderCard({Key? key, required this.bidder}) : super(key: key);

  final Bidder bidder;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: randomPinkList[random.nextInt(9) + 1],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.07,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bid placed by ${bidder.name}',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  DateFormat('dd-MM-yyyy      KK:mm:ss a')
                      .format(DateTime.now()),
                  style: TextStyle(color: Colors.grey.shade400),
                ),
              ],
            ),
          ],
        ),
        Text('${bidder.price} ETH')
      ],
    );
  }
}
