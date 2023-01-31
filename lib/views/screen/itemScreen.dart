import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../res/components/date_range_picker.dart';
import '../../res/mediaQuery.dart';
import '../responsive.dart';
import '../widget/itemWidget/allItem_Widget.dart';
import '../widget/itemWidget/confirmed_Widget.dart';
import '../widget/itemWidget/pendingOders_Widget.dart';
import '../widget/itemWidget/placeOders_Widget.dart';

class ItemScreen extends StatefulWidget {
  // const PoScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(DateTime.now().year, DateTime.now().month, 1),
    end: DateTime(DateTime.now().year, DateTime.now().month + 1, 0),
  );

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
    final start = dateRange.start;
    final end = dateRange.end;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        automaticallyImplyLeading: false,
        title: Text(
          "Item",
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
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: SizeVariables.getWidth(context) * 0.8,
                          child: DateRangePicker(
                            onPressed: pickDateRange,
                            end: end,
                            start: start,
                            // width: double.infinity,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: SizeVariables.getHeight(context) * 0.01,
                  // ),
                  Container(
                    height: SizeVariables.getHeight(context) * 0.05,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
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
                                width: SizeVariables.getWidth(context) * 0.19,
                                child: Center(
                                  child: Text(
                                    'All Item',
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
                                width: SizeVariables.getWidth(context) * 0.19,
                                child: Center(
                                  child: Text(
                                    'Place Oder',
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
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: _selection == 2
                                    ? Theme.of(context).scaffoldBackgroundColor
                                    : Theme.of(context).unselectedWidgetColor,
                              ),
                              child: Container(
                                width: SizeVariables.getWidth(context) * 0.19,
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Pending Oders',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: _selection == 2
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _selection = 2;
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
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                primary: _selection == 3
                                    ? Theme.of(context).scaffoldBackgroundColor
                                    : Theme.of(context).unselectedWidgetColor,
                              ),
                              child: Container(
                                width: SizeVariables.getWidth(context) * 0.19,
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      'Confirmed Oders',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: _selection == 3
                                            ? Colors.black
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _selection = 3;
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
                ],
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
                // height: SizeVariables.getHeight(context) * 0.81,
                height: height > 750
                    ? 76.9.h
                    : height < 650
                        ? 103.h
                        : 78.3.h,
                child: Column(
                  children: [
                    _selection == 0
                        ? AllItem_Widget()
                        : _selection == 1
                            ? PlaceOder_Widget()
                            : _selection == 2
                                ? Pendingoders_Widget()
                                : _selection == 3
                                    ? Confirmed_Widget()
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

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        builder: (context, child) => Theme(
              data: ThemeData.light().copyWith(
                primaryColor: Colors.blue,
                accentColor: Colors.blue,
                colorScheme: const ColorScheme.light(primary: Colors.blue),
                buttonTheme:
                    const ButtonThemeData(textTheme: ButtonTextTheme.primary),
              ),
              child: child!,
            ),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
        initialDateRange: dateRange);

    if (newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
      // isLoading = true;
    });

    print('dateRange: $dateRange');
    return dateRange;
  }
}
