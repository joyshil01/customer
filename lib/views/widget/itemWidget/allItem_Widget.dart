import 'package:customer/res/mediaQuery.dart';
import 'package:customer/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../routes/routeName.dart';

class AllItem_Widget extends StatefulWidget {
  // const AllItem_Widget({Key? key}) : super(key: key);

  @override
  State<AllItem_Widget> createState() => _AllItem_WidgetState();
}

class _AllItem_WidgetState extends State<AllItem_Widget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height > 850
          ? 76.9.h
          : height > 750
              ? 76.5.h
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
                                          'APPROVED',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(
                                                color: const Color.fromARGB(
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
