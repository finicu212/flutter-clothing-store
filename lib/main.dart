import 'package:flutter/material.dart';
import "shop.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String loginTitle = "Login Page";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: loginTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: loginTitle),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    body: Center(
      child: Container(
        width: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: const <Widget>[
                  Text("Username:"),
                  Expanded(
                    child: SizedBox(
                      height: 50.0,
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("Username"),
                          border: OutlineInputBorder(),
                          hintText: 'username',
                        ),
                      )
                    )
                  )
                ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                  children: const <Widget>[
                    Text("Password:"),
                    Expanded(
                        child:SizedBox(
                            height: 50.0,
                            child: TextField(
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                label: Text("Password"),
                                border: OutlineInputBorder(),
                                hintText: 'password',
                              ),
                            )
                        )
                    )
                  ]
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyShopPage(title: "Shop page")),
                );
              },
              child: const Text("Submit")
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHomePage2(title: "home page 2")),
                    );
                  },
                  child: const Text("Go to main page 2")
              )
            ],
          ),
        )
      ),
    );
  }
}


class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  static const String loginTitle = "Login Page";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: loginTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage2(title: loginTitle),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
            width: 300.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      children: const <Widget>[
                        Text("Username:"),
                        Expanded(
                            child: SizedBox(
                                height: 50.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    label: Text("Username"),
                                    border: OutlineInputBorder(),
                                    hintText: 'username',
                                  ),
                                )
                            )
                        )
                      ]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      children: const <Widget>[
                        Text("Password:"),
                        Expanded(
                            child:SizedBox(
                                height: 50.0,
                                child: TextField(
                                  obscureText: true,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    label: Text("Password"),
                                    border: OutlineInputBorder(),
                                    hintText: 'password',
                                  ),
                                )
                            )
                        )
                      ]
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyShopPage(title: "Shop page")),
                      );
                    },
                    child: const Text("Submit")
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Go back")
                )
              ],
            ),
          )
      ),
    );
  }
}
