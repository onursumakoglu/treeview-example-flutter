import 'package:example/fetchData.dart';
import 'package:flutter/material.dart';
import 'package:dynamic_treeview/dynamic_treeview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BaseData> model;

  Future<void> getData() async {
    var data = await fetchData();

    setState(() {
      model = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Treeview Example"),
        ),
        body: DynamicTreeView(
          data: model,
          config: Config(
              parentTextStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              rootId: "0",
              parentPaddingEdgeInsets:
                  EdgeInsets.only(left: 16, top: 0, bottom: 0)),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
} 
