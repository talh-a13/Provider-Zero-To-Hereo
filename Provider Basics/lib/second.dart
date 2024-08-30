import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_basics/listprovider.dart';

class Second extends StatefulWidget {
  const Second({super.key, required List<int> numbers,});
    @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, value, child) =>  Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Text(
             value.numbers.last.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      value.numbers[index].toString(),
                      style: const TextStyle(fontSize: 20),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
