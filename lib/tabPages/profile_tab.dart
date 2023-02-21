import 'package:car_lease_dapp/authentication/login_screen.dart';
import 'package:car_lease_dapp/global/global.dart';
import 'package:car_lease_dapp/splashScreen/splash_screen.dart';
import 'package:car_lease_dapp/widgets/progress_dialogue.dart';
import 'package:flutter/material.dart';

class ProfileTabPage extends StatefulWidget {
  const ProfileTabPage({super.key});

  @override
  State<ProfileTabPage> createState() => _ProfileTabPageState();
}

class _ProfileTabPageState extends State<ProfileTabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Sign Out"),
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext c) {
                return ProgressDialogue(message: "Signing out...");
              });
          fAuth.signOut();
          Navigator.push(context,
              MaterialPageRoute(builder: (c) => const MySplashScreen()));
        },
      ),
    );
  }
}
