import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color primaryColor = Color(0xff18203d);

  final Color secondaryColor = Color(0xff232c51);

  final Color logoGreen = Color(0xff25bcbb);

  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  User _user;

  GoogleSignIn _googleSignIn = new GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        backgroundColor: primaryColor,
        body: isSignIn
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //We take the image from the assets
                  Image.asset(
                    'assets/splash-image.png',
                    height: 250,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Texts and Styling of them
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Our MaterialButton which when pressed will take us to a new screen named as
                  //LoginScreen
                  MaterialButton(
                    elevation: 0,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomeScreen()));
                    },
                    color: logoGreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Start Learning!',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    textColor: Colors.white,
                  )
                ],
              )
            : Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign in to 7Factor and continue',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 28),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Enter your email and password below to continue to 7Factor and let the learning begin!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      _buildTextField(
                          nameController, Icons.account_circle, 'Username'),
                      SizedBox(height: 20),
                      _buildTextField(
                          passwordController, Icons.lock, 'Password'),
                      SizedBox(height: 30),
                      MaterialButton(
                        elevation: 0,
                        minWidth: double.maxFinite,
                        height: 50,
                        onPressed: () {},
                        color: logoGreen,
                        child: Text('Login',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 20),
                      MaterialButton(
                        elevation: 0,
                        minWidth: double.maxFinite,
                        height: 50,
                        onPressed: () {
                          handleSignIn();
                        },
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.google),
                            SizedBox(width: 10),
                            Text('Sign-in using Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ],
                        ),
                        textColor: Colors.white,
                      ),
                      SizedBox(height: 100),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: _buildFooterLogo(),
                      )
                    ],
                  ),
                ),
              ));
  }

  bool isSignIn = false;

  Future<void> handleSignIn() async {
    GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    UserCredential result = (await _auth.signInWithCredential(credential));

    _user = result.user;

    setState(() {
      isSignIn = true;
    });
  }

  Future<void> gooleSignout() async {
    await _auth.signOut().then((onValue) {
      _googleSignIn.signOut();
      setState(() {
        isSignIn = false;
      });
    });
  }

  _buildFooterLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/tgd_white.png',
          height: 40,
        ),
        Text('7Factor',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
  }
}

//Center(
//              child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//            CircleAvatar(
//            backgroundImage: NetworkImage(_user.photoUrl),
//        ),
//      Text(_user.displayName),
//    OutlineButton(
//    onPressed: () {
//    gooleSignout();
//},
//child: Text("Logout"),
//)
//],
//),
//)
