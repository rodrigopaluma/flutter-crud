import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Users users = Provider.of((context));

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: [
          IconButton(onPressed: (){
            users.put(const User(
                id: '',
                name: 'Ricardo Nobrega',
                email: 'ricardo@email.com',
                avatarUrl: '',
            ));
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i)=> UserTile(users.byIndex(i)),
      ),
    );
  }
}