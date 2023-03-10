import 'package:fire_base_/auth_firebase/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'auth_controller.dart';
import 'email_page.dart';

class PhonAuth extends StatelessWidget {
  TextEditingController phone = TextEditingController();
  AuthController authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Authentication'),
      ),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Enter your Phone Number',
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(label: Text('phone')),
          controller: phone,
        ),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () async {
              await authController.verifyPhoneNumber(
                phone.text,context
              );
            },
            child: const Text('send code ')),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
