import 'package:flutter/material.dart';

class Myhome extends StatelessWidget {
  Myhome({Key? key}) : super(key: key);
  var fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                key: fkey,
                children: [
                  Text("Hello", style: TextStyle(fontSize: 100)),
              ElevatedButton(onPressed: (){
                bool isValid = fkey.currentState!.validate();
                print(isValid);
                Navigator.push(context, MaterialPageRoute(builder: (cnxt) {
                  return Myhome();
                }));
              }, child:Center() ,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
