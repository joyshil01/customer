import 'package:customer/views/widget/dashboardWidget/barChart/bar_ChartWidget.dart';
import 'package:flutter/material.dart';
import '../../../../res/components/containerStyle.dart';
import '../../../../res/mediaQuery.dart';
import '../../../responsive.dart';

class Bar_Chart extends StatefulWidget {
  const Bar_Chart({Key? key}) : super(key: key);

  @override
  State<Bar_Chart> createState() => _Bar_ChartState();
}

class _Bar_ChartState extends State<Bar_Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: SizeVariables.getHeight(context)*0.4,
      child: ContainerStyle(
        child: Responsive(
          mobile: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    'Month wise Paid vs Due',
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              Bar_ChartWidget(),
              Container(
                padding: EdgeInsets.only(
                  top: SizeVariables.getHeight(context)*0.02
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          FittedBox(
                            child: Text(
                              'Paid',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            width: SizeVariables.getHeight(context) * 0.004,
                          ),
                          Container(
                            height: 15,
                            width: 18,
                            color: Color(0xFF295ab5),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          FittedBox(
                            child: Text(
                              'Due',
                              style: Theme.of(context).textTheme.bodyText2,
                            ),
                          ),
                          SizedBox(
                            width: SizeVariables.getHeight(context) * 0.004,
                          ),
                          Container(
                            height: 15,
                            width: 18,
                            color: Color(0xFFCCCCCC),
                          ),
                        ],
                      ),
                    )
                  ],
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
