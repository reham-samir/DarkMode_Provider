import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/MyProvider.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text('Light'),
            ),
            Switch(
              value: Provider.of<MyProvider>(context, listen: true).swVal,
              onChanged: (bool val) =>
                  Provider.of<MyProvider>(context, listen: false)
                      .switchChange(val),
              activeColor: Colors.black,
              inactiveTrackColor: Colors.deepOrange,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text('Dark'),
            ),
          ],
        ),
      ),
    );
  }
}
