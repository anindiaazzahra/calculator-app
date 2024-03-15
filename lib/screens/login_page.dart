import 'package:flutter/material.dart';
import 'package:tugas2tpm/screens/kelompok_page.dart';

class LoginPage extends StatefulWidget {
  final String? message;

  const LoginPage({Key? key, this.message}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  String? message;

  @override
  void initState() {
    super.initState();
    message = widget.message;
  }

  Widget _inputField(String hintText, {bool isPassword = false, TextEditingController? controller}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        enabled: true,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  Widget _elevatedButton(String text, BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 0.0),
      child: ElevatedButton(
        onPressed: () {
          if (userController.text == "user1" && passController.text == "12345") {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DataKelompokPage()),
            );
          } else {
            setState(() {
              message = "Login Gagal";
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message!)));
          }
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(380, 60),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 60.0, 8.0, 0.0),
                child: SizedBox(
                  width: 260,
                  child: Image.asset('images/signIn.png'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
                child: Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              _inputField("Username", controller: userController),
              _inputField("Password", controller: passController, isPassword: true),
              if (message != null) Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 20.0, 8.0,0.0),
                child: Text(message!, style: TextStyle(
                    color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold
                )),
              ),
              _elevatedButton("Sign in", context),
               // Show message if exists
            ],
          ),
        ),
      ),
    );
  }
}
