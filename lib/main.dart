import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Complete Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset('assets/images/cib-flutter.png'),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 50,
                bottom: 10,
              ),
              child: TextFormField(
                controller: _usernameController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black38,
                decoration: InputDecoration(
                  hintText: 'Input Username',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 50,
                bottom: 10,
              ),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                cursorColor: Colors.black38,
                decoration: InputDecoration(
                  hintText: 'Input Password',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.amber,
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Username: ' + _usernameController.text);
                  print('Password: ' + _passwordController.text);
                  // ROUTE ME
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
