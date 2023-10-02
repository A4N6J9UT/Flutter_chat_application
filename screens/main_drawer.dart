import 'package:authapp/widgets/sign_up_widget.dart';
import 'package:flutter/material.dart';


class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 218, 125, 164),
            ),
            child: Text('Login With'),
          ),
          ListTile(
            title: const Text('Google SignIn'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (ctx) =>const SignUpWidget()));
            },
          ),
          ListTile(
            title: const Text('Email-OTP'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
