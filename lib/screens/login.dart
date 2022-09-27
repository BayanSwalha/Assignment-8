import 'package:flutter/material.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/screens/welcompage.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  bool validate = true;
  String email1 = "abc@example.com";
  String password = "password11";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("log In Page"),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 131, 149, 255)),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Divider(
                  height: 80,
                ),
                CircleAvatar(
                  radius: 70,
                  child: Image(image: AssetImage("image/one.png")),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        label: Text("Email",
                            style: TextStyle(color: Colors.black)),
                        hintText: "Please enter your email",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    maxLines: 1,
                    controller: myController,
                    maxLength: 50,
                    textAlign: TextAlign.center,
                  ),
                ),
                //password

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        label: Text(
                          "Password",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "Please enter your password",
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    maxLines: 1,
                    controller: myController2,
                    maxLength: 50,
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 50),
                        backgroundColor: Colors.indigo),
                    onPressed: () {
                      setState(() {
                        if (myController2.text.isNotEmpty &
                            myController.text.isNotEmpty) {
                          if ((password == myController2.text) &
                              (email1 == myController.text)) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: ((context) {
                              return welcomepage();
                            })));
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: Text(
                                      "Your Email or Password are Invaild \n \n If you Dont have an account you can Sign-Up",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    icon: Icon(Icons.cancel),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: ((context) {
                                                return Sign_up();
                                              })));
                                            });
                                          },
                                          child: Text("Sign-Up")),
                                    ],
                                  );
                                });
                          }
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(
                                    "The Email and the Password SHOULDN'T BE EMPTY",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.red),
                                  ),
                                );
                              });
                        }
                      });
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 20),
                    )),
              ]))),
    );
  }
}
