import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/theme_provider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Consumer<ThemeProvider>(
                builder: (context, themeProvidervalue, child) {
              return Switch(
                  value: themeProvidervalue.isSelected,
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.transparent,
                  thumbColor: const WidgetStatePropertyAll(Colors.orange),
                  thumbIcon: WidgetStatePropertyAll(
                      themeProvidervalue.isSelected
                          ? const Icon(Icons.nights_stay)
                          : const Icon(Icons.sunny)),
                  onChanged: (value) {
                    themeProvidervalue.toggleTheme();
                  });
            }),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Paris",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 30),
                Consumer<ThemeProvider>(
                  builder: (context, value, child) => Icon(
                    value.isSelected ? Icons.nights_stay : Icons.sunny,
                    color: Colors.orange,
                    size: 250,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "22° C",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Good Morning ",
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 131, 129, 129)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Wah-Cantt",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                    width: 50,
                    child: Divider(
                      thickness: 3,
                    )),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.wb_twighlight),
                          Text('Sunrise'),
                          Text('7.00 Am')
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.air),
                          Text('Wind'),
                          Text("4 m/s")
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.thermostat),
                          Text('Temperature'),
                          Text('21')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
