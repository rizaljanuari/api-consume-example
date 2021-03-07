import 'package:consume_api/model/model_user.dart';
import 'package:flutter/material.dart';

class DetailListUser extends StatelessWidget {
  final ModelUsers user;

  DetailListUser(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              Text(user.email),
              Text(user.phone),
              Text(user.website),
              SizedBox(
                height: 6,
              ),
              Text(
                "Address",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(user.address.street),
              Text(user.address.city),
              Text(user.address.suite),
              Text(user.address.zipcode),
              SizedBox(
                height: 6,
              ),
              Text(
                "Company",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(user.company.name)
            ],
          ),
        ),
      ),
    );
  }
}
