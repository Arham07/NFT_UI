import 'package:flutter/material.dart';
import 'package:nft_ui/models/art.dart';
import 'package:nft_ui/screens/detail_screen/detail_screen.dart';

class CustomGridView extends StatefulWidget {
  CustomGridView({Key? key, required this.scrollKey, required this.list})
      : super(key: key);

  final String scrollKey;
  final List<Art> list;

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: GridView.builder(
        key: PageStorageKey(widget.scrollKey),
        itemCount: widget.list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailScreen(art: widget.list[index],),
              ),
            );
          },
          child: Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Hero(
              tag:  widget.list[index].imgUrl!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.list[index].imgUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
