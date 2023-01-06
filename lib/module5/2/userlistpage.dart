import 'package:assignment_flutter/module5/2/user.dart';
import 'package:flutter/material.dart';

import 'adduser.dart';
import 'dbhelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sqlite Database',
      home: UserListPage(),
    );
  }
}

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<User> userList = [];

  @override
  void initState() {
    super.initState();

    loadUserList();
    // userList.add(User(name: 'kenil', email: 'kenil@gamil.com', contact:'1234567890', age: 19));
    // userList.add(User(name: 'ridhi', email: 'ridhi@gamil.com', contact:'1515551141', age: 21));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          //navigate to add user page
          navigateToNext(null, context);

        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {


                navigateToNext(userList[index], context);
              },
              title: Text(userList[index].name),
              subtitle: Text(
                  '${userList[index].email}\n'
                      '${userList[index].contact}\n${userList[index].age}'),
              isThreeLine: true,
            );
          }),
    );
  }

  loadUserList() async {
    var mList = await DataBaseHelper.instance.getUserList();
    setState(() {
      userList = mList;
    });
  }

  Future<void> navigateToNext(User? user,BuildContext context) async {
    var id = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddUserPage(user),
      ),
    );
    if (id != -1) {
      loadUserList();
    }
  }
}