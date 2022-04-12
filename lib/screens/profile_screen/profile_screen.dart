import 'package:flutter/material.dart';
import 'package:nft_ui/models/colors.dart';
import 'package:nft_ui/models/profile.dart';
import 'package:nft_ui/screens/profile_screen/widgets/custom_grid_view.dart';
import 'package:nft_ui/screens/profile_screen/widgets/sliverbox.dart';
import 'package:nft_ui/screens/profile_screen/widgets/tab_sliver_delegate.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final profile = Profile.generateProfile();
  final tabs = ['Creations', 'Collections'];

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: SliverBox(
                  profile: widget.profile,
                ),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    // isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey.shade700,
                    indicatorColor: Colors.black,
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
              CustomGridView(
                  scrollKey: 'creations', list: widget.profile.creations!),
              CustomGridView(
                  scrollKey: 'collections', list: widget.profile.collections!),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: buildIcon(Icons.arrow_back_ios_outlined),
      actions: [buildActionIcon(Icons.more_vert_rounded)],
    );
  }

  IconButton buildActionIcon(IconData icon) => IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        splashColor: const Color(0xFFD5A3BD),
        splashRadius: 25,
        onPressed: () {},
      );

  IconButton buildIcon(IconData icon) => IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        splashColor: randomPink3,
        splashRadius: 25,
        onPressed: () {},
      );
}
