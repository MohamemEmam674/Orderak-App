import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Nayira'),
            accountEmail: Text('nayeramahmod526@gamil.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Center(
                  child: Image.network(
                  'https://image.flaticon.com/icons/png/512/2922/2922561.png' ,
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      '')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text("yor Order"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.local_offer ),
            title: Text('offers'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
          ),

          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('talabat Pay'),
            onTap: () => null,
          ),
          ListTile(
            leading:
            Icon(Icons.assignment ),
            title: Text('Vouchers'),
                onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('get help'),

            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.apps_outlined),
            title: Text('Info'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}