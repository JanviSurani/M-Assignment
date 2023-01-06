import 'package:assignment_flutter/module5/2/user.dart';
import 'package:flutter/material.dart';

import 'dbhelper.dart';


class AddUserPage extends StatefulWidget {
  User? user;

  AddUserPage(this.user, {Key? key}) : super(key: key);

  @override
  State<AddUserPage> createState() => _AddUserPageState(user);
}

class _AddUserPageState extends State<AddUserPage> {
  final _fromkey = GlobalKey<FormState>();

  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _contactController = TextEditingController();
  var _ageController = TextEditingController();

  var appBarTitle = "";
  var btnText = "";

  User? user;

  _AddUserPageState(this.user);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (user != null) {
      appBarTitle = "Edit User";
      btnText = "Update";
      _nameController.text = user!.name;
      _emailController.text = user!.email;
      _contactController.text = user!.contact;
      _ageController.text = user!.age.toString();
    } else {
      appBarTitle = "Add User";
      btnText = "Add";
    }
  }

  // refreshStudentList() {
  //   setState(() {
  //     user = DataBaseHelper.getUserList();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              // validator: (value){
              //   if(value == null || value.isEmpty){
              //     return 'Please enter name';
              //   }
              //   return null;
              // },
              controller: _nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Enter name"),
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Enter email"),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _contactController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Enter contact"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Enter age"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      //
                      // if(_fromkey.currentState!.validate()){
                      //
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text("dataft")),
                      //   );
                      // }

                      String name = _nameController.text;
                      String email = _emailController.text;
                      String contact = _contactController.text;
                      int age = int.parse(_ageController.text);

                      if (user != null) {
                        //update
                        User mUser = User.withId(
                            id: user!.id,
                            name: name,
                            email: email,
                            contact: contact,
                            age: age);
                        updateUser(mUser, context);
                      } else {
                        User mUser = User(
                            name: name,
                            email: email,
                            contact: contact,
                            age: age);

                        addUser(mUser, context);
                      }
                    },
                    child: Text(btnText),
                  ),
                ),
                SizedBox(
                  width: user != null ? 20 : 0,
                ),
                if (user != null)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {

                        deleteUser(user, context);
                      },
                      child: Text('Delete'),
                    ),
                  )
                else
                  Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  void addUser(User user, BuildContext context) async {
    var id = await DataBaseHelper.instance.insertUser(user);
    if (id != -1) {
      Navigator.pop(context, id);
    } else {
      print('error record');
    }
  }

  Future<void> updateUser(User mUser, BuildContext context) async {
    var id = await DataBaseHelper.instance.updateUser(mUser);
    if (id != -1) {
      Navigator.pop(context, id);
    } else {
      print('update record');
    }
  }

  Future<int?> deleteUser(dUser, BuildContext context) async {
    var id = await DataBaseHelper.instance.deleteUser(dUser.id);
    if (id != -1) {
      Navigator.pop(context, id);
    } else {
      print('delete record');
    }
    return null;
  }
// Future<int?> deleteUser(User mUser, BuildContext context) async {
//   int id = await DataBaseHelper.instance.deleteUser(mUser.id);
//   if (id != -1) {
//     Navigator.pop(context, id);
//   } else {
//     print('update record');
//   }
// }

// Future<void> deleteUser(User mUser, BuildContext context) async {
//     var id = await DataBaseHelper.instance.deleteUser(user.id);
//     if (id != -1) {
//       Navigator.pop(context, id);
//     } else {
//       print('update record');
//     }
//   }
}