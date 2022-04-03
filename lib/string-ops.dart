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
  String result = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    formControllerA.dispose();
    formControllerB.dispose();
    super.dispose();
  }

  String _getFormString()
  {
    return formControllerA.value.text + " " + formControllerB.value.text;
  }

  void _concatenateStrings() {
    setState(() {
      result = _getFormString();
    });
  }

  void _sortArrays() {
    setState(() {
      List<String> stringList = _getFormString().split(" ");
      List<int> dataListAsInt = stringList.map((data) => int.parse(data)).toList();

      dataListAsInt.sort();

      result = dataListAsInt.join(" ");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
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
                      onPressed: _concatenateStrings,
                      child: const Text("Concatenate")
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                    ElevatedButton(
                      onPressed: _sortArrays,
                      child: const Text("Numeric Sort")
                    ),
                  ],
                ),
              ),
              const Text(
                'Resulting string:',
              ),
              Text(
                '$result',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        )
      ),
    );
  }
}

