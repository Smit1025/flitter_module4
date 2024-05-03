import 'package:flutter/material.dart';

class citysilect extends StatefulWidget {
  const citysilect({super.key});

  @override
  State<citysilect> createState() => _citysilectState();
}

class _citysilectState extends State<citysilect> {
  String _selectedCity = "";
  List<String> cities = [
    "New York",
    "Los Angeles",
    "Chicago",
    "Houston",
    "Phoenix",
    "Philadelphia",
    "San Antonio",
    "San Diego",
    "Dallas",
    "San Jose",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Picker App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected City: $_selectedCity',
              style: TextStyle(fontSize: 24.0),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Select a City"),
                      content: StatefulBuilder(
                        builder: (context, setState) {
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: cities.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(cities[index]),
                                onTap: () {
                                  setState(() {
                                    _selectedCity = cities[index];
                                  });
                                  Navigator.of(context).pop();
                                },
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                );
              },
              child: Text("Select City"),
            ),
          ],
        ),
      ),
    );
  }
}
