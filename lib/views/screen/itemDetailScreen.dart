import 'package:customer/res/mediaQuery.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../responsive.dart';
import 'customerInformation.dart';
import 'itemInformation.dart';

class ItemDetailScreen extends StatefulWidget {
  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  int _selection = 0;
  int Counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {});
    super.initState();
    Map data = {
      "month": "",
      "type": "",
      "year": "",
      "user_id": "",
      "all": "1" //self
    };
  }

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
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            '₹1386057.50',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: SizeVariables.getHeight(context) * 0.01,
                        ),
                        Container(
                          child: Text(
                            'SO2301015',
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "I T C LIMITED",
                            style:
                                Theme.of(context).textTheme.bodyText1!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    radius: 11,
                                    child: Text(
                                      '4',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: SizeVariables.getWidth(context) * 0.02,
                              ),
                              Container(
                                child: Text(
                                  'Items',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.01,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: _selection == 0
                              ? Theme.of(context).scaffoldBackgroundColor
                              : Theme.of(context).unselectedWidgetColor,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.2,
                          child: Center(
                            child: Text(
                              'Item info.',
                              style: TextStyle(
                                color: _selection == 0
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 0;
                            Map data = {
                              "month": "",
                              "type": "",
                              "year": "",
                              "user_id": "",
                              "all": "1" //self
                            };
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeVariables.getHeight(context) * 0.006,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          primary: _selection == 1
                              ? Theme.of(context).scaffoldBackgroundColor
                              : Theme.of(context).unselectedWidgetColor,
                        ),
                        child: Container(
                          width: SizeVariables.getWidth(context) * 0.2,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Customer info.',
                              style: TextStyle(
                                color: _selection == 1
                                    ? Colors.black
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _selection = 1;
                            Map data = {
                              "month": "",
                              "type": "",
                              "year": "",
                              "user_id": "",
                              "all": "1" //self
                            };
                          });
                          print('SELECTION: $_selection');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: SizeVariables.getHeight(context) * 0.006,
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
                height: height > 850
                    ? 74.1.h
                    : height > 750
                        ? 73.1.h
                        : height < 650
                            ? 72.h
                            : 69.1.h,
                child: Column(
                  children: [
                    _selection == 0
                        ? ItemInformation()
                        : _selection == 1
                            ? CustomerInformation()
                            : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
        desktop: Container(),
      ),
    );
  }
}
