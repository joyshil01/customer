import 'package:customer/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../res/components/date_range_picker.dart';
import '../../res/mediaQuery.dart';
import '../responsive.dart';

class SettlementScreen extends StatefulWidget {
  // const QuotationScreen({Key? key}) : super(key: key);

  @override
  State<SettlementScreen> createState() => _SettlementScreenState();
}

class _SettlementScreenState extends State<SettlementScreen> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime(DateTime.now().year, DateTime.now().month, 1),
    end: DateTime(DateTime.now().year, DateTime.now().month + 1, 0),
  );
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
          "Settlement",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 22, color: Colors.white),
        ),
      ),
      body: Responsive(
        mobile: Column(
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
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                // height: SizeVariables.getHeight(context) * 0.8,
                height: height > 850
                    ? 81.8.h
                    : height > 750
                        ? 81.5.h
                        : height < 650
                            ? 82.h
                            : 78.2.h,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: ContainerStyleInvoice(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      'Total Invoice',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    child: Text(
                                      '₹ 562774',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeVariables.getHeight(context) * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      'Current Due',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    child: Text(
                                      '₹ 480290',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeVariables.getHeight(context) * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      'Overdue',
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    child: Text(
                                      '₹ 0',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      child: Text(
                                        '29,238',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(
                                              color: Color(0xFF198754),
                                              fontSize: 22,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      child: Text(
                                        '11 Jan, 2023',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.amber,
                      height: height > 850
                          ? 61.h
                          : height > 750
                              ? 59.5.h
                              : height < 650
                                  ? 55.h
                                  : 52.5.h,
                      child: ListView.builder(
                        itemCount: 18,
                        itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(8),
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, RouteNames.settlement_details);
                            },
                            child: ContainerStyleInvoice(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text(
                                            'INV00000001',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text(
                                            '2023-01-17',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          width:
                                              SizeVariables.getWidth(context) *
                                                  0.18,
                                          height:
                                              SizeVariables.getHeight(context) *
                                                  0.021,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color(0xFFFb9a76e),
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
                                                  'PARTIAL PAID',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text(
                                            '61242',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text(
                                            '40000',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(3),
                                          child: Text(
                                            '65%',
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        desktop: Row(),
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

    // Map<String, dynamic> _data = {'month': myMonth, 'year': myYears.toString()};

    print('dateRange: $dateRange');
    return dateRange;
  }
}
