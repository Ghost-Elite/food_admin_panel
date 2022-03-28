import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

import '../screens/home.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //UserProvider? userProvider;
  /*Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);
      userProvider.addUserData(
        currentUser: user,
        userEmail: user!.email,
        userImage: user!.photoURL,
        userName: user!.displayName,
      );

      return user;
    } catch (e) {
      print(e.message);
    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('Signing to be continue'),
                  Text('Vegi ',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                    BoxShadow(
                      color: Colors.green.shade900,
                        blurRadius: 5,
                      offset: Offset(3,3),
                    ),
                  ],
                  ),
                  ),

                  Column(

                    children: [
                      SignInButton(
                        Buttons.Apple,
                        text: "Sign up with Apple",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign up with Google",
                        onPressed: () {
                          /*_googleSignUp().then((value) =>
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (c)=>HomeScreen())));*/
                        },
                      ),
                      SignInButton(
                        Buttons.Facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text('By signing in you are agreeing to our',style: TextStyle(color: Colors.grey[800]),),
                      Text('Terms and Privacy policy',style: TextStyle(color: Colors.grey[800])),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
