import 'package:draaft_login/screen/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 62, 31),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.abc_outlined,
              color: Color.fromARGB(255, 114, 106, 36),
              size: 100,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  FormBuilderTextField(
                    name: "email",
                    decoration: const InputDecoration(
                      label: Text(
                        "Email",
                        style: TextStyle(
                            color: Color.fromARGB(255, 155, 149, 149)),
                      ),
                      icon: Icon(
                        Icons.email_rounded,
                        color: Color.fromARGB(255, 114, 106, 36),
                      ),
                    ),
                  ),
                  FormBuilderTextField(
                    name: "password",
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 155, 149, 149)),
                      ),
                      icon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 114, 106, 36),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Forget Password?",
                    style: TextStyle(color: Color.fromARGB(255, 155, 149, 149)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 114, 106, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 15.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Navbar()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Not a member?  ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 155, 149, 149)),
                      ),
                      Text(
                        "Join Now",
                        style: TextStyle(
                          color: Color.fromARGB(255, 114, 106, 36),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
