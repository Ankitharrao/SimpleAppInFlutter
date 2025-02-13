import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Unknown_person.jpg/694px-Unknown_person.jpg";
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              margin: EdgeInsets.zero,
              accountName: Text("Ankitha R Rao"),
              accountEmail: Text("ankitharrao5@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            )),
            ListTile(
              
              leading: Icon(CupertinoIcons.home),
              // ignore: deprecated_member_use
              title: Text("Home", textScaleFactor: 1.2,),

            ),
            ListTile(
              
              leading: Icon(CupertinoIcons.profile_circled),
              // ignore: deprecated_member_use
              title: Text("Profile", textScaleFactor: 1.2,),

            ),
            ListTile(
              
              leading: Icon(CupertinoIcons.mail),
              // ignore: deprecated_member_use
              title: Text("Email", textScaleFactor: 1.2,),

            )
      ],
    ));
  }
}
