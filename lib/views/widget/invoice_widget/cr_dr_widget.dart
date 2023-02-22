import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../res/mediaQuery.dart';
import '../dashboardWidget/lastInvoice/invoiceListContainer.dart';


class Cr_Dr_widget extends StatefulWidget {
  // const Cr_Dr_widget({Key? key}) : super(key: key);

  @override
  State<Cr_Dr_widget> createState() => _Cr_Dr_widgetState();
}

class _Cr_Dr_widgetState extends State<Cr_Dr_widget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height > 850
          ? 67.h
          : height > 750
              ? 65.7.h
              : height < 650
                  ? 64.h
                  : 60.h,
      width: 400,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: ContainerStyleInvoice(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeVariables.getWidth(context) * 0.3,
                        child: Text(
                          'Flipkart India Pvt Ltd.',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        child: Text(
                          '\₹123617',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          '2023-01-13',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                      Container(
                        child: const Icon(
                          Icons.keyboard_backspace,
                          color: Colors.green,
                          size: 40,
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
    );
  }
}
