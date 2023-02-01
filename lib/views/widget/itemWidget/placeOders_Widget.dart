import 'package:customer/res/components/containerStyle.dart';
import 'package:customer/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../res/mediaQuery.dart';

class PlaceOder_Widget extends StatefulWidget {
  // const PlaceOder_Widget({Key? key}) : super(key: key);

  @override
  State<PlaceOder_Widget> createState() => _PlaceOder_WidgetState();
}

class _PlaceOder_WidgetState extends State<PlaceOder_Widget> {
  var details = "FOR";
  List<String> detail = ["FOR", "FOB", "CIF", "Ex-Works"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height > 750
          ? 76.9.h
          : height < 650
              ? 75.h
              : 72.h,
      width: double.infinity,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ContainerStyleInvoice(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: const Border(
                          bottom: BorderSide(width: 0.06),
                          top: BorderSide(width: 0.06),
                          right: BorderSide(width: 0.06),
                          left: BorderSide(width: 0.06),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 197, 195, 195),
                            offset: Offset(
                              3.0,
                              3.0,
                            ),
                            blurRadius: 3.0,
                            spreadRadius: 1.0,
                          ), //BoxShadow
                        ],
                      ),
                      height: SizeVariables.getHeight(context) * 0.05,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: SizeVariables.getWidth(context) * 0.1,
                      top: SizeVariables.getHeight(context) * 0.01,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.done,
                                  size: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Code : 51230102',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.done,
                                  size: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Container(
                                child: Text(
                                  'GSTIN : 19AABCT6577B1Z7',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.done,
                                  size: 16,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Status : ',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 174, 194, 185),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 7.0,
                                    right: 7.0,
                                    top: 2.8,
                                    bottom: 2.8,
                                  ),
                                  child: Center(
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Text(
                                        'Active',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              color: const Color.fromARGB(
                                                  255, 63, 147, 84),
                                              fontSize: 12,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ContainerStyle(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              'Bill to',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          Container(
                            height: SizeVariables.getHeight(context) * 0.0006,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: SizeVariables.getHeight(context) * 0.017,
                          ),
                          Container(
                            child: Text(
                              '6B, BISHOP LEFROY ROAD, 700020, Bhawanipur, Bhawanipur, Kolkata, West Bengal',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: ContainerStyle(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    'Ship to',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.done,
                                          size: 16,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Same as Bill to',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: SizeVariables.getHeight(context) * 0.0006,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: SizeVariables.getHeight(context) * 0.017,
                          ),
                          Container(
                            child: Text(
                              '6B, , BISHOP LEFROY ROAD, 700020, Bhawanipur, Bhawanipur, Kolkata, West Bengal',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ContainerStyleInvoice(
              child: Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'SO Date:',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '01-02-2023',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.008,
                    ),
                    Container(
                      child: Text(
                        'Delivery Date:',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '01-02-2023',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.008,
                    ),
                    Container(
                      child: Text(
                        'Profit Center:',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'func 3',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.008,
                    ),
                    Container(
                      child: Text(
                        'PO Number:',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'PO7436373',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.008,
                    ),
                    Container(
                      child: Text(
                        'Credit Period(Days)',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        '20',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context)*0.008,
                    ),
                    Container(
                      child: Text(
                        'Select Sales Person',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'KAM1',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
