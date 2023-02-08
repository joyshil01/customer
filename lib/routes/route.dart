import 'package:customer/routes/routeName.dart';
import 'package:customer/views/screen/profileScreen.dart';
import 'package:flutter/material.dart';
import '../res/components/bottomNavigationBar.dart';
import '../views/screen/invoicedetails_Screen.dart';
import '../views/screen/itemDetailScreen.dart';
import '../views/screen/login/login_Screen.dart';
import '../views/screen/miscellaneous_screen.dart';
import '../views/screen/podetails_Screen.dart';
import '../views/screen/quotationFormScreen.dart';
import '../views/screen/settlement_Details.dart';
import '../views/screen/uploadAccountStatement_screen.dart';
import '../views/screen/uploadCrNote_screen.dart';
import '../views/screen/uploadInvoice_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.navbar:
        return MaterialPageRoute(
            builder: (BuildContext context) => CustomBottomNavigation());

      case RouteNames.invoice_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => Invoicedetails_Screen());

      case RouteNames.po_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => Podetails_Screen());

      case RouteNames.quotationform:
        return MaterialPageRoute(
            builder: (BuildContext context) => QuotationForm_Screen());

      case RouteNames.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen());

      case RouteNames.upload_invoice:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadInvoice_Screen());

      case RouteNames.upload_cr_note:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadCrNote_Screen());

      case RouteNames.upload_account_statement:
        return MaterialPageRoute(
            builder: (BuildContext context) => UploadAccountStatement_Screen());

      case RouteNames.miscellaneous:
        return MaterialPageRoute(
            builder: (BuildContext context) => Miscellaneous_Screen());

      case RouteNames.item_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => ItemDetailScreen());

      case RouteNames.settlement_details:
        return MaterialPageRoute(
            builder: (BuildContext context) => Settlementdetails_Screen());

      case RouteNames.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => ProfileScreen());

      default:
        return MaterialPageRoute(
          builder: (BuildContext context) {
            return const Scaffold(
              body: Center(
                child: Text('No Route'),
              ),
            );
          },
        );
    }
  }
}
