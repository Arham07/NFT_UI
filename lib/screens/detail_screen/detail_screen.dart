import 'package:flutter/material.dart';
import 'package:nft_ui/models/art.dart';
import 'package:nft_ui/models/colors.dart';
import 'package:nft_ui/screens/detail_screen/widgets/art_info.dart';
import 'package:nft_ui/screens/detail_screen/widgets/bidder_list.dart';
import 'package:nft_ui/screens/detail_screen/widgets/detail_banner.dart';
import 'package:nft_ui/screens/profile_screen/profile_screen.dart';
import 'package:nft_ui/screens/profile_screen/widgets/buy_button.dart';
import 'package:nft_ui/screens/profile_screen/widgets/tab_sliver_delegate.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.art}) : super(key: key);

  final Art art;
  final tabs = ['Info', 'Birds', 'History'];

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxToScroll) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 350,
                backgroundColor: buttonColor,
                leading: buildIcon(
                  context,
                  Icons.arrow_back_ios_outlined,
                  back: true,
                ),
                actions: [
                  buildIcon(context, Icons.more_vert_outlined, back: false)
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(
                    art: widget.art,
                  ),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: ArtInfo(
                  art: widget.art,
                ),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    // isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey.shade300,
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 8, right: 40),
                    tabs: widget.tabs
                        .map(
                          (e) => Tab(
                            child: Text(
                              e,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView(),
              BidderList(bidderList: widget.art.birds!, scrollKey: 'birds'),
              BidderList(bidderList: widget.art.birds!, scrollKey: 'history')
            ],
          ),
        ),
      ),
      floatingActionButton: BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Padding buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: IconButton(
        onPressed: back
            ? () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              }
            : null,
        splashColor: randomPink3,
        splashRadius: 25,
        icon: Icon(icon),
        color: Colors.black,
      ),
    );
  }
}
