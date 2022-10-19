import 'package:flutter/material.dart';
import 'user_class.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(user.username)),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.network(
                user.urlAvatar,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              Text(
                user.username,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                user.email,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ));
  }
}
