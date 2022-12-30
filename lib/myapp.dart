// import 'package:flutter/material.dart';
//
// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key? key}) : super(key: key);
//   var age;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.grey,
//         body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return 'Empty';
//                   }
//                 },
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(
//                     label: Text('Name'),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               )),
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 validator: (v) {
//                   if (v!.length < 10) {
//                     return 'Too Short';
//                   }
//                 },
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(
//                     label: Text('Phone'),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               )),
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 200,
//                     child: TextFormField(
//                       validator: (value) {
//                         //age=value;
//                         if (value!.length > 2) {
//                           return 'Error';
//                         }
//                       },
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       decoration: InputDecoration(
//                           label: Text('Age'),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10))),
//                     ),
//                   ),
//                 ],
//               )),
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 validator: (v) {
//                   if (!v!.contains('@') && !v.contains('.com')) {
//                     return 'missing"@"or".com"';
//                   }
//                 },
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(
//                     label: Text('Email'),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               )),
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 maxLines: 6,
//                 validator: (v) {
//                   if (v!.isEmpty) {
//                     return 'Empty';
//                   }
//                 },
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 decoration: InputDecoration(
//                     label: Text('Address'),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10))),
//               )),
//           ElevatedButton(onPressed: () {
//
//           }, child: Text("Save"))
//         ]));
//   }
// }
