import 'package:flutter/material.dart';

import 'page.dart';

class Myhomepage extends StatelessWidget {
  Myhomepage({Key? key}) : super(key: key);
  var fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Form(
          key: fkey,
          child:
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (v) {
                    if (v!.isEmpty) {
                      return 'Empty';
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      label: Text('Name'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (v) {
                    if (v!.isEmpty) {
                      return 'empty';
                    } else if (v!.length < 10) {
                      return 'Too Short';
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            ElevatedButton(
                onPressed: () {
                  bool isValid = fkey.currentState!.validate();
                  print(isValid);
                  Navigator.push(context, MaterialPageRoute(builder: (cnxt) {
                    return Myhome();
                  }));
                },
                child: Text("Save"))
          ]),
        ));
  }
}
