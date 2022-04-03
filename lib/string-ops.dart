import 'package:flutter/material.dart';

class StringOpsApp extends StatelessWidget {
  const StringOpsApp({Key? key}) : super(key: key);

  static const String theTitle = "String Operations Page";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: theTitle,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const StringOpsPage(title: theTitle),
    );
  }
}

class StringOpsPage extends StatefulWidget {
  const StringOpsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StringOpsPage> createState() => _StringOpsPageState();
}

class _StringOpsPageState extends State<StringOpsPage> {
  final formControllerA = TextEditingController();
  final formControllerB = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    formControllerA.dispose();
    formControllerB.dispose();
    super.dispose();
  }

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
                  children: <Widget>[
                    const Text("String A:"),
                    Expanded(
                      child: SizedBox(
                        height: 50.0,
                        child: TextField(
                          controller: formControllerA,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            label: Text("Enter a String here"),
                            border: OutlineInputBorder(),
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
                  children: <Widget>[
                    const Text("String B:"),
                    Expanded(
                      child:SizedBox(
                        height: 50.0,
                        child: TextField(
                          controller: formControllerB,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: const InputDecoration(
                            label: Text("Enter a String here"),
                            border: OutlineInputBorder(),
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
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: const Text("Concatenate")
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: const Text("Numeric Sort")
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

