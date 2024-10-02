import 'package:flutter/material.dart';
import 'package:my_vpp/screens/signin_screen.dart';
import 'package:my_vpp/widgets/custom_scaffold.dart';
import 'package:my_vpp/widgets/reuseablebutton.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return customscaffold(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Column(
          children: <Widget>[
            const Text(
              "Welcome to My vpp",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(108, 0, 0, 0))
                  ]),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/logo.png', // Path to your image in the assets folder
              height: 200, // Adjust the height as per your requirement
            ),
            const SizedBox(
              height: 30,
            ),
            firebasebutton(context, "Sign in", () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signinscreen()));
            }),
            firebasebutton(context, "Sign Up", () {}),
          ],
        ),
      ),
    );
  }
}
