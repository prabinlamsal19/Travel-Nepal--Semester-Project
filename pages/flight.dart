// import 'dart:html';

import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown() : super();

  final String title = "DropDown Demo";

  @override
  DropDownState createState() => DropDownState();
}

class Location {
  int id;
  String name;

  Location(this.id, this.name);

  static List<Location> getCompanies() {
    return <Location>[
      Location(0, ''),
      Location(1, 'Kathmandu'),
      Location(2, 'Pokhara'),
      Location(3, 'Biratnagar'),
      Location(4, 'Mustang'),
      Location(5, 'Lumbini'),
      Location(6, 'Surkhet'),
      Location(7, 'Birgunj'),
      Location(8, 'Bharatpur'),
      Location(9, 'Janakpur'),
      Location(10, 'Jomsom'),
      Location(11, 'Lukla'),
      Location(12, 'Taplejung'),
    ];
  }
}

class Flightclass {
  int id;
  String name;

  Flightclass(this.id, this.name);

  static List<Flightclass> getCompanies() {
    return <Flightclass>[
      Flightclass(1, 'Kathmandu'),
      Flightclass(2, 'Pokhara'),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Location> _location = Location.getCompanies();
  List<DropdownMenuItem<Location>> _dropdownMenuItems;
  Location _selectedLocation;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_location);
    _selectedLocation = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Location>> buildDropdownMenuItems(List location) {
    List<DropdownMenuItem<Location>> items = [];
    for (Location location in location) {
      items.add(
        DropdownMenuItem(
          value: location,
          child: Text(location.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Location selectedCompany) {
    setState(() {
      _selectedLocation = selectedCompany;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Origin \n",
                      style: TextStyle(
                          color: Color(0xFFFb7b7c5),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ]),
              ),
              DropdownButton(
                value: _selectedLocation,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
              ),
              Text('Selected: ${_selectedLocation.name}'),
              SizedBox(
                height: 20.0,
              ),
              Text("Destination",
                  style: TextStyle(
                      color: Color(0xFFFb7b7c5),
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
              DropdownButton(
                value: _selectedLocation,
                items: _dropdownMenuItems,
                onChanged: onChangeDropdownItem,
              ),
              Text('Selected: ${_selectedLocation.name}'),
            ],
          ),
        ),
      ),
    );
  }
}
