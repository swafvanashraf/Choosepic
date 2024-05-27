
// internet connectivity


// import 'package:connectivity/connectivity.dart';
// import 'package:flutter/material.dart';
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
// class _MyAppState extends State<MyApp> {
//   Connectivity connectivity = Connectivity();
//   String connectivityCheck(ConnectivityResult? result) {
//     if (result == ConnectivityResult.wifi) {
//       return "You are now connected to wifi";
//     } else if (result == ConnectivityResult.mobile) {
//       return "You are now connected to mobile data";
//     } else if (result == ConnectivityResult.none) {
//       return "No connection available";
//     } else {
//       return "No Connection!!";
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: StreamBuilder<ConnectivityResult>(
//           stream: connectivity.onConnectivityChanged,
//           builder: (context, snapshot) {
//             return Scaffold(
//               appBar: AppBar(
//                 backgroundColor: snapshot.data == ConnectivityResult.none
//                     ? Colors.red
//                     : Colors.green,
//                 title: const Text("Connectivity check"),
//               ),
//               body: Center(
//                 child: Text(connectivityCheck(snapshot.data)),
//               ),
//             );
//           }),
//     );
//   }
// }




/////////////////////////////////////////////////////////////////////////////////////////////