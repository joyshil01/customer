import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../res/mediaQuery.dart';
import '../../../routes/routeName.dart';
import '../dashboardWidget/lastInvoice/invoiceListContainer.dart';

class Pendingoders_Widget extends StatefulWidget {
  // const Pendingoders_Widget({Key? key}) : super(key: key);

  @override
  State<Pendingoders_Widget> createState() => _Pendingoders_WidgetState();
}

class _Pendingoders_WidgetState extends State<Pendingoders_Widget> {
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
      child: ListView.builder(
        itemCount: 20,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'SO2301014',
                              style: Theme.of(context).textTheme.bodyText2,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: SizeVariables.getWidth(context) * 0.4,
                            child: Text(
                              'HAPPIEST MINDS TECHNOLOGIES LIMITED',
                              style: Theme.of(context).textTheme.bodyText1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFFccb678),
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
                                          'Pending',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                fontSize: 11,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '5 jan 2023',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
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
    );
  }
}
