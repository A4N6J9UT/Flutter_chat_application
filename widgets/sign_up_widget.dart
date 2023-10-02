import 'package:authapp/providers/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          
          const SizedBox(height: 50,),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hey Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Login to your account to continue",
                style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 16,),
          ElevatedButton.icon(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
              label: const Text("Sign Up With Google")),
          const SizedBox(
            height: 40,
          ),
          RichText(
              text: const TextSpan(text: "Already have an account?", children: [
            TextSpan(
                text: "Log In",
                style: TextStyle(decoration: TextDecoration.underline))
          ]))
        ],
      ),
   
    );
  }
}
