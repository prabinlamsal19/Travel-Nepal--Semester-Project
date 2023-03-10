// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Image.asset(
//             "assets/logo.png",
//             width: 350,
//             height: 350,
//             fit: BoxFit.cover,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Text(
//             "You dream it. We plant it.",
//             style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 20,
//                 letterSpacing: 2,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'package:matrix_link/screens/home_screen.dart';

// void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          "Home Page",
        ),
      ),
    );
  }
}
