import 'package:flutter/material.dart';
import 'package:flutter_provider_basics/slider_provider.dart';
import 'package:provider/provider.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    double value = 1.0;

    final _Provider = Provider.of<SliderProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Container Using Count"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
              min: 0,
              max: 1,
              value: value.value,
              onChanged: (val) {
                _Provider.setValue(val);
              },
            );
          }),
        Consumer<SliderProvider>(builder: (context,value, child){
          return Row(
            children: [
              Expanded(
                  child: Container(
                child: Center(child: Text("Container 1 ")),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red.withOpacity(value.value)),
              )),
              Expanded(
                  child: Container(
                child: Center(child: Text("Container 2 ")),
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(value.value)),
              )),
            ],
          );
        })
        ],
      ),
    );
  }
}
