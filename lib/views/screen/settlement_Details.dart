import 'package:customer/res/components/buttonStyle.dart';
import 'package:customer/res/mediaQuery.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../responsive.dart';

class Settlementdetails_Screen extends StatefulWidget {
  @override
  State<Settlementdetails_Screen> createState() =>
      _Settlementdetails_ScreenState();
}

class _Settlementdetails_ScreenState extends State<Settlementdetails_Screen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: SizeVariables.getWidth(context) * 0.4,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Advanced List (40000)",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Container(
              height: SizeVariables.getHeight(context) * 0.03,
              width: SizeVariables.getWidth(context) * 0.15,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 93, 142),
                border: const Border(
                  bottom: BorderSide(width: 0.06),
                  top: BorderSide(width: 0.06),
                  right: BorderSide(width: 0.06),
                  left: BorderSide(width: 0.06),
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 35, 87, 129),
                    offset: Offset(
                      3.0,
                      3.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: AppButton(
                label: 'Post',
                onPressed: () {},
              ),
            ),
          ],
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
                        ? 103.h
                        : 78.3.h,
              ),
            ),
          ],
        ),
        desktop: Container(),
      ),
    );
  }
}
