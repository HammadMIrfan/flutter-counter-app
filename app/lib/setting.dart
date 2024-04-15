import 'package:app/profile.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        actions: [
  IconButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileView(),));
  }, icon: const Icon(Icons.person_3))
],
      ),
    );
  }
}