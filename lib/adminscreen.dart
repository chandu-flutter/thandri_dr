import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shalom/contact.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Only For Admin"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 60,
          ),
          child: Center(
            child: Form(
                key: _formfield,
                child: Column(
                  children: [
                    Lottie.asset("animations/admin.json", height: 100),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: "Enter Email Address",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        suffix: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 128, 0, 128),
                        minimumSize: Size(240, 50),
                      ),
                      onPressed: () {
                        if (emailController.text == "chandu.christ@gmail.com" &&
                            passController.text == "thandrisannidhi") {
                          print("Success");
                          emailController.clear();
                          passController.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ContactScreen();
                              },
                            ),
                          );
                        } else {
                          print("fail");
                        }
                      },
                      child: Text("Login"),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
