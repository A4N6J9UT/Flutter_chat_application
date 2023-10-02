import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:authapp/providers/google_signin.dart';

class LoggedIn extends StatelessWidget {
  const LoggedIn({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Logged In"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: const Text("Logged Out"))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color:const Color.fromARGB(255, 235, 157, 212),
        child: Column(children: [
          const Text(
            "Profile",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 32),
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(_user.photoURL!),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Name :${_user.displayName!}",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Email :${_user.email!}",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ]),
      ),
    );
  }
}
