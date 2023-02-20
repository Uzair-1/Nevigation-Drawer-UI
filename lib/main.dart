import 'package:flutter/material.dart';

void main()
{
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer "),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
       drawer: Drawer(
         child: Expanded(
           child:  ListView(
             children: [
               UserAccountsDrawerHeader(
                   decoration: BoxDecoration(
                     color: Colors.teal,
                   ),
                   currentAccountPicture: CircleAvatar(
                     child: Image.network("data:image/png;base64,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"),
                   ),

                   accountName: Text("Uzair Ali "),
                   accountEmail: Text("uzairali7212@gmail.com")),
               ListTile(
                 leading: Icon(Icons.home),
                 iconColor: Colors.blueGrey,
                 onTap: (){},
                 title: Text("Home"),
               ),
               ListTile(
                 leading: Icon(Icons.supervised_user_circle),
                 iconColor: Colors.blueGrey,
                 onTap: (){},
                 title: Text("Profile"),
               ),
               ListTile(
                 leading: Icon(Icons.backup),
                 iconColor: Colors.blueGrey,
                 onTap: (){},
                 title: Text("Backup"),
               ),
               ListTile(
                 leading: Icon(Icons.history),
                 iconColor: Colors.blueGrey,
                 onTap: (){},
                 title: Text("History"),
               ),
               ListTile(
                 leading: Icon(Icons.logout),
                 iconColor: Colors.blueGrey,
                 onTap: (){},
                 title: Text("Logout"),
               ),

             ],
           ),

         ),
       ),
      ),
    );
  }
}
