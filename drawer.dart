import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              "Travel-Nepal",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              "travelnepal@gmail.com",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500),
            ),

            // currentAccountPicture: Image.asset('assets/prof.png'),    /// rectangle image from asset
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white54,

              backgroundImage: NetworkImage(
                  "https://images.squarespace-cdn.com/content/v1/5a3bb03b4c326d76de73ddaa/1563555775349-NZYY95AI8Y80PTKIJLWN/ke17ZwdGBToddI8pDm48kFWxnDtCdRm2WA9rXcwtIYR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UcTSrQkGwCGRqSxozz07hWZrYGYYH8sg4qn8Lpf9k1pYMHPsat2_S1jaQY3SwdyaXg/The_Common_Wanderer_nepal_travel_guide.jpg"),

              ///circular image from network
              // child: Image.asset('assets/prof.png'),  ///circle banauna khojeko
            ),
          ),

          // //drawerheader banuna
          // DrawerHeader(
          //   child: Text("G-library"),
          //   decoration: BoxDecoration(color: Colors.purple[100]),
          // ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Travel Nepal"),
            subtitle: Text("Company Ltd."),
            trailing: Icon(Icons.business_center_rounded),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("travelnepal@gmail.com"),
            trailing: Icon(Icons.mail),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone Number"),
            subtitle: Text("98123456789"),
            trailing: Icon(Icons.phone_android_rounded),
          )
        ],
      ),
    );
  }
}
