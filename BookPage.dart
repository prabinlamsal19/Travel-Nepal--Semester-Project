import 'package:flutter/material.dart';
import 'package:matrix_link/pages/flight.dart';

class BookPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/cbgg2.png"), fit: BoxFit.cover)),
        child: Row(
          children: [
            SizedBox(
              height: 10,
              width: 20,
            ),
            ClipOval(
              child: Material(
                color: Colors.green,
                child: InkWell(
                  splashColor: Colors.red,
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Icon(
                      Icons.flight,
                      size: 40,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DropDown()));
                  },
                ),
              ),
            ),
            SizedBox(width: 50),
            ClipOval(
              child: Material(
                color: Colors.green,
                child: InkWell(
                  splashColor: Colors.red,
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Icon(
                      Icons.hotel_rounded,
                      size: 40,
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
