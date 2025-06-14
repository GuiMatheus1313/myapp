import 'package:flutter/material.dart';
import 'package:myapp/HttpTest/model/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${user.name}', style: TextStyle(fontSize: 18)),
            Text('Username: ${user.username}', style: TextStyle(fontSize: 18)),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 18)),
            Text('Empresa: ${user.company}', style: TextStyle(fontSize: 18)),
            Text('Cidade: ${user.city}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}