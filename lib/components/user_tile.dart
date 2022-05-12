import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
      ? const CircleAvatar(child: const Icon(Icons.person))
      : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
            children: <Widget>[
              IconButton(onPressed: (){}, icon: const Icon(Icons.edit), color: Colors.black26),
              IconButton(onPressed: (){}, icon: const Icon(Icons.delete), color: Colors.purpleAccent,)
            ]
        )
      ),
    );
  }
}
