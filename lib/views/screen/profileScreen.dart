import 'package:customer/views/widget/dashboardWidget/lastInvoice/invoiceListContainer.dart';
import 'package:flutter/material.dart';

import '../../res/mediaQuery.dart';
import '../../routes/routeName.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          "Profile details",
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontSize: 24, color: Colors.white),
        ),
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: IconButton(
                  icon: const Icon(
                    Icons.logout_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.login);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ContainerStyleInvoice(
          child: Container(
            height: SizeVariables.getHeight(context) * 0.38,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: SizeVariables.getWidth(context) * 0.08,
                          backgroundColor: Colors.green,
                          backgroundImage:
                              const AssetImage('assets/img/profilePic.jpg'),
                          // child: const Icon(Icons.account_box, color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          child: Text(
                            'Joy Shil',
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      fontSize: 20,
                                    ),
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
                      children: [
                        Container(
                          child: Text(
                            'Customer Id: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            'C001',
                            style: Theme.of(context).textTheme.bodyText1,
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
                      children: [
                        Container(
                          child: Text(
                            'Company Id: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            '0010102',
                            style: Theme.of(context).textTheme.bodyText1,
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
                      children: [
                        Container(
                          child: Text(
                            'GST No: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            '27AAACI5950L1ZC',
                            style: Theme.of(context).textTheme.bodyText1,
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
                      children: [
                        Container(
                          child: Text(
                            'Pan: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            'AAACI5950L',
                            style: Theme.of(context).textTheme.bodyText1,
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
                      children: [
                        Container(
                          child: Text(
                            'Email: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          child: Text(
                            'jshil@vitwo.in',
                            style: Theme.of(context).textTheme.bodyText1,
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
                      children: [
                        Container(
                          child: Text(
                            'Address: ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        Container(
                          width: SizeVariables.getWidth(context) * 0.65,
                          child: Text(
                            'SURVEY NO 1078 2 1, , KHARADPADA,, 396235, VILLAGE NAROLI, VILLAGE NAROLI, Dadra And Nagar Haveli, Dadra and Nagar Haveli and Daman and Diu',
                            style: Theme.of(context).textTheme.bodyText1,
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
