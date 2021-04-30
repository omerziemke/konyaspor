import 'package:flutter/material.dart';

class KupalarimizSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Kupalar",
          style: TextStyle(fontSize: 20, color: Colors.green.shade800),
        ),
        iconTheme: IconThemeData(
          color: Colors.green.shade800,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: ListTile(
              onTap: () {},
              leading: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/kupa.jpg"),
                  ),
                ),
              ),
              title: Text("UEFA CUP"),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.green.shade800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
