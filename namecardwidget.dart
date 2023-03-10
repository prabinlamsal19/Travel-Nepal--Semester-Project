// import 'package:flutter/material.dart';

// class NameCardWidget extends StatelessWidget {
//   const NameCardWidget({
//     Key key,
//     @required this.myflight,
//     @required TextEditingController nameController,
//   })  : _nameController = nameController,
//         super(key: key);

//   final String myflight;
//   final TextEditingController _nameController;

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
//             myflight,
//             style: TextStyle(
//                 color: Colors.black87,
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _nameController,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Search...",
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
