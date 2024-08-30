import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_basics/listprovider.dart';
import 'package:state_management_basics/second.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, NumbersProviderModel, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            NumbersProviderModel.add();
        },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Text(
              NumbersProviderModel.numbers.last.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: NumbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                       NumbersProviderModel.numbers[index].toString(),
                        style: const TextStyle(fontSize: 20),
                      );
                    })),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Second(numbers: NumbersProviderModel.numbers)));
                },
                child: const Text("Go to Second Screen"))
          ],
        ),
      ),
    );
  }
}
