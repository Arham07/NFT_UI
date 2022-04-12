import 'package:flutter/material.dart';
import 'package:nft_ui/models/bidder.dart';

import 'bidder_card.dart';

class BidderList extends StatelessWidget {
  BidderList({Key? key, required this.bidderList, required this.scrollKey})
      : super(key: key);

  final String scrollKey;
  final List<Bidder> bidderList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          key: PageStorageKey(scrollKey),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.03,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
            bottom: MediaQuery.of(context).size.height * 0.12,
          ),
          itemBuilder: (context, index) => BidderCard(
                bidder: bidderList[index],
              ),
          separatorBuilder: (_, index) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
          itemCount: bidderList.length),
    );
  }
}
