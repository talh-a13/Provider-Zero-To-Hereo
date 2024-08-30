import 'package:flutter/material.dart';
import 'package:flutter_provider_basics/Provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountExample extends StatelessWidget {
  const CountExample({super.key});

  @override
  Widget build(BuildContext context) {
    final _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count Example"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          return Text(value.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
/*

Consumer Function in Provider
 
Primary function is to rebuild only the widgets that need updating when the ChangeNotifier changes, 
thereby optimizing performance.
*/