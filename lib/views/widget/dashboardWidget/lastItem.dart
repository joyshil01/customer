import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../res/components/containerStyle.dart';
import '../../../res/mediaQuery.dart';
import '../../../routes/routeName.dart';
import '../../responsive.dart';
import 'lastInvoice/invoiceListContainer.dart';

class LastItem extends StatefulWidget {
  @override
  State<LastItem> createState() => _LastItemState();
}

class _LastItemState extends State<LastItem> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      // color: Colors.amber,
      // height: SizeVariables.getHeight(context) * 0.71,
      child: ContainerStyle(
        child: Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Last Item",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(fontSize: 22),
                  ),
                ),
              ),
              // SizedBox(
              //   height: SizeVariables.getHeight(context) * 0.01,
              // ),
              Container(
                height: height > 850
                    ? 50.h
                    : height > 750
                        ? 53.h
                        : height < 650
                            ? 65.h
                            : 62.h,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.only(
                      top: SizeVariables.getHeight(context) * 0.005,
                      bottom: SizeVariables.getHeight(context) * 0.005,
                      left: SizeVariables.getWidth(context) * 0.025,
                      right: SizeVariables.getWidth(context) * 0.025,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.item_details);
                      },
                      child: ContainerStyleInvoice(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        'SO2301014',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'PO8981',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '2023-01-29',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(fontSize: 14),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width:
                                          SizeVariables.getWidth(context) * 0.4,
                                      child: Text(
                                        'HAPPIEST MINDS TECHNOLOGIES LIMITED',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color.fromARGB(
                                                  255, 174, 194, 185),
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
                                                    'Open order',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1!
                                                        .copyWith(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 63, 147, 84),
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              '5 jan 2023',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1,
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
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          desktop: Row(),
        ),
      ),
    );
  }
}
