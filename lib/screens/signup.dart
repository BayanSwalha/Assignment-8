import 'package:flutter/material.dart';
import 'package:myapp/screens/welcompage.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  bool validate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Sign-Up Page"),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 131, 149, 255)),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Divider(
                  height: 20,
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
                        label: Text(
                          "Email",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "Please enter your email",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    maxLines: 1,
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
                    maxLength: 50,
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
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
                        label: Text(
                          "Confirm Password",
                          style: TextStyle(color: Colors.black),
                        ),
                        hintText: "Please confirm your password",
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                    maxLines: 1,
                    maxLength: 50,
                    obscureText: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(150, 50),
                        backgroundColor: Colors.indigo),
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    )),
              ]))),
    );
  }
}
