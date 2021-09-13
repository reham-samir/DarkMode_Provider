import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/MyProvider.dart';
import 'my_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MyProvider>(
        create: (_) => MyProvider(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RoRo'),
          // systemOverlayStyle:
          //     SystemUiOverlayStyle(statusBarColor: Colors.green),
        ),
        body: null,
        drawer: MyDrawer(),
      ),
      themeMode: Provider.of<MyProvider>(context).tm,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        //لتغيير لون الخط فى Dark Mode
        appBarTheme: AppBarTheme(brightness: Brightness.dark
            //backwardsCompatibility: false,
            ),
        primaryColor: Colors.black,

        // primaryTextTheme: TextTheme(
        //   caption: TextStyle(color: Colors.blue),
        // ),
      ),
    );
  }
}
