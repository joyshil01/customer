import 'package:flutter/material.dart';
import '../../../../res/components/buttonStyle.dart';
import '../../../../res/mediaQuery.dart';
import '../../../../routes/routeName.dart';
import '../../../responsive.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _companyid = new TextEditingController();
  TextEditingController _yourid = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Company ID',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
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
            padding: const EdgeInsets.only(
              left: 5,
              // bottom: 8,
            ),
            height: SizeVariables.getHeight(context) * 0.05,
            child: TextFormField(
              // keyboardType: TextInputType.emailAddress,
              controller: _companyid,
              textInputAction: TextInputAction.next,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              cursorColor: Colors.black,
              onSaved: (email) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Company ID",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.02,
          ),
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Your ID',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
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
            padding: const EdgeInsets.only(
              left: 5,
              // bottom: 8,
            ),
            height: SizeVariables.getHeight(context) * 0.05,
            child: TextFormField(
              controller: _yourid,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              cursorColor: Colors.black,
              onSaved: (email) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your ID",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.03,
          ),
          Container(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Your Password',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
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
            padding: const EdgeInsets.only(
              left: 5,
              // bottom: 8,
            ),
            height: SizeVariables.getHeight(context) * 0.05,
            child: TextFormField(
              controller: _password,
              // keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
              cursorColor: Colors.black,
              onSaved: (email) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Your Password",
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.grey),
                suffixIcon: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.visibility,
                      color: Theme.of(context).bottomAppBarColor,
                    )
                    // : Icon(Icons.visibility_off, color: Colors.black),
                    ),
              ),
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.04,
          ),
          Responsive(
            mobile: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // margin: EdgeInsets.all(8),
                  height: SizeVariables.getHeight(context) * 0.06,
                  child: LoginButton(
                    label: 'Log-in',
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.navbar);
                    },
                  ),
                ),
                SizedBox(
                  height: SizeVariables.getHeight(context) * 0.03,
                ),
              ],
            ),
            desktop: Row(),
          ),
        ],
      ),
    );
  }
}
