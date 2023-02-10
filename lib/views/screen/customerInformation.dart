import 'package:customer/res/mediaQuery.dart';
import 'package:flutter/material.dart';

import '../widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';

class CustomerInformation extends StatefulWidget {
  @override
  State<CustomerInformation> createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: ContainerStyleInvoice(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Code:',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            '51221102',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'GST:',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            '27AAACI5950L1ZC',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Pan:',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            'AAACI5950L',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Address:',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.5,
                          child: Text(
                            'SURVEY NO 1078 2 1, , KHARADPADA,, 396235, VILLAGE NAROLI, VILLAGE NAROLI, Dadra And Nagar Haveli, Dadra and Nagar Haveli and Daman and Diu',
                            style: Theme.of(context).textTheme.bodyText2,
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
      ),
    );
  }
}
