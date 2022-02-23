import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginScreen());
  }
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          const Text(
            "My App Title",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Login to Your App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 44.0,
              fontWeight: FontWeight.bold,
            )
          ),
          const SizedBox(
            height:44.0,
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'User Email',
              prefixIcon: Icon(Icons.mail, color: Colors.black),

            )
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "User Password",
              prefixIcon: Icon(Icons.lock, color: Colors.black),
            )
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text("Don't remember your password?", style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 80.0,
          ),
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: const Color.fromARGB(255, 0, 106, 255),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)
              ),
              onPressed: () {},
              child: const Text('Login', style: TextStyle(color: Colors.white, fontSize:18.0)),
              ),
          )
        ],
      )
      
    );
  }
}