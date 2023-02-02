// import 'package:flutter/material.dart';
// import 'package:snowyweb/global/appbar.dart';
// import 'package:snowyweb/global/global.dart' as global;
// import 'package:email_validator/email_validator.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   final _formKey = GlobalKey<FormState>();

//   bool userOK = false;
//   bool passOK = false;

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         appBar: MainAppbar(),
//         body: Center(
//           child: Container(
//             alignment: Alignment.center,
//             width: screenWidth * 3 / 5,
//             child: global.card(
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(bottom: 20, left: 10),
//                       child: Text(
//                         'Login',
//                         textScaleFactor: 1.8,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: TextFormField(
//                         keyboardType: TextInputType.emailAddress,
//                         autocorrect: false,
//                         decoration: global.decoration("Email", Icons.person),
//                         validator: (email) => email != null
//                             ? EmailValidator.validate(email)
//                                 ? null
//                                 : "Enter a vaild email"
//                             : "An email is required",
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10),
//                       child: TextFormField(
//                         keyboardType: TextInputType.text,
//                         autocorrect: false,
//                         decoration:
//                             global.decoration("Password", Icons.lock_rounded),
//                         obscureText: true,
//                         validator: (email) =>
//                             email != null ? null : "A password is required",
//                       ),
//                     ),
//                     global.buttoncard("LOGIN")
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
