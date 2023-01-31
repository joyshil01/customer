import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../responsive.dart';

class ItemDetailScreen extends StatefulWidget {
  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: true,
        title: Text(
          "Item details",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
                color: Colors.white,
              ),
        ),
      ),
      body: Responsive(
        mobile: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                height: height > 750
                    ? 89.7.h
                    : height < 650
                        ? 92.h
                        : 88.h,
              ),
            ),
          ],
        ),
        desktop: Container(),
      ),
    );
  }
}
