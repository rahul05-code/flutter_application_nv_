import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String name2 = "",
      email2 = "",
      password2 = "",
      confirmPassword2 = "",
      phone2 = "",
      address2 = "",
      marks2 = "";

  TextEditingController namecntrl = TextEditingController();
  TextEditingController emailcntrl = TextEditingController();
  TextEditingController passwordcntrl = TextEditingController();
  TextEditingController confirmpasscntrl = TextEditingController();
  TextEditingController phonecntrl = TextEditingController();
  TextEditingController addresscntrl = TextEditingController();
  TextEditingController markscntrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _registrationPage());
  }

  Widget _registrationPage() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: namecntrl,
              decoration: const InputDecoration(
                labelText: "User Name",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) =>
                  xyz!.isEmpty ? "Please enter your name" : null,
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: emailcntrl,
              decoration: const InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) {
                if (xyz!.isEmpty) {
                  return "Email cannot be blank";
                }
                final regex =
                    RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                if (!regex.hasMatch(xyz)) {
                  return "Email address is not in valid format";
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: passwordcntrl,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: confirmpasscntrl,
              decoration: const InputDecoration(
                labelText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: phonecntrl,
              decoration: const InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: addresscntrl,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: markscntrl,
              decoration: const InputDecoration(
                labelText: "Marks",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name2 = namecntrl.text;
                  email2 = emailcntrl.text;
                  password2 = passwordcntrl.text;
                  confirmPassword2 = confirmpasscntrl.text;
                  phone2 = phonecntrl.text;
                  address2 = addresscntrl.text;
                  marks2 = markscntrl.text;
                });
              },
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
