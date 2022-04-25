// import 'package:flutter/material.dart';
// import 'package:toten_prototipo/src/screens/cashier/cashier.dart';
// import 'package:toten_prototipo/src/theme/colors.dart';
// import 'package:toten_prototipo/src/widgets/action_button.dart';

// /// Tela voltada para instruir usuários
// /// Ela mostrará como o sistema deve ser utilizado
// class Intructions extends StatefulWidget {
//   const Intructions({Key? key}) : super(key: key);
//   @override
//   State<Intructions> createState() => _IntructionsState();
// }

// class _IntructionsState extends State<Intructions> {
//   void navigateToCashier() {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => const Cashier(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: blue,
//         centerTitle: true,
//         title: const Text("Tela de Instruções"),
//       ),
//       body: getBody(),
//     );
//   }

//   Widget getBody() {
//     return ListView(
//       children: [
//         const SizedBox(
//           height: 70,
//         ),
//         // INSTRUÇÕES EM SI:
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               width: 20,
//             ),
//             Container(
//               width: 250,
//               height: 250,
//               color: black,
//             ),
//             const SizedBox(
//               width: 30,
//             ),
//             // Container(
//             //   width: 250,
//             //   height: 250,
//             //   color: black,
//             // ),
//             // const SizedBox(
//             //   width: 30,
//             // ),
//             // Container(
//             //   width: 250,
//             //   height: 250,
//             //   color: black,
//             // ),
//             // const SizedBox(
//             //   width: 30,
//             // ),
//             // Container(
//             //   width: 250,
//             //   height: 250,
//             //   color: black,
//             // ),
//             // const SizedBox(
//             //   width: 30,
//             // ),
//           ],
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   // crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: [
//         //     const SizedBox(
//         //       width: 20,
//         //     ),
//         //     Container(
//         //       width: 250,
//         //       height: 250,
//         //       color: black,
//         //     ),
//         //     const SizedBox(
//         //       width: 30,
//         //     ),
//         //     Container(
//         //       width: 250,
//         //       height: 250,
//         //       color: black,
//         //     ),
//         //     const SizedBox(
//         //       width: 30,
//         //     ),
//         //     Container(
//         //       width: 250,
//         //       height: 250,
//         //       color: black,
//         //     ),
//         //     const SizedBox(
//         //       width: 30,
//         //     ),
//         //     Container(
//         //       width: 250,
//         //       height: 250,
//         //       color: black,
//         //     ),
//         //     const SizedBox(
//         //       width: 30,
//         //     ),
//         //   ],
//         // ),
//         const SizedBox(
//           height: 120,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(bottom: 20),
//           child: ActionButton(
//               icon: Icons.check,
//               text: "OK, Entendi!",
//               onTap: navigateToCashier),
//         ),
//       ],
//     );
//   }
// }
