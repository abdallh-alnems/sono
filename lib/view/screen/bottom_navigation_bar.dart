// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../logic/controller/bottom_navigation_bar_controller.dart';

// class MyBottomNavBar extends StatelessWidget {
//   const MyBottomNavBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;
//    var currentPage = controller.currentPage;

//     Get.put(BottomNavControllerImp());
//     return GetBuilder<BottomNavControllerImp>(
//       builder: (controller) => Scaffold(
//           body: controller.listPage.elementAt(controller.currentPage),
//           bottomNavigationBar: Container(
//             margin: EdgeInsets.all(screenWidth * .05),
//             height: screenHeight * .155,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(50),
//             ),
//             child: ListView.builder(
//                 itemCount: 4,
//                 scrollDirection: Axis.horizontal,
//                 padding: EdgeInsets.symmetric(horizontal: screenWidth * .02),
//                 itemBuilder: (context, index) => InkWell(
//                     onTap: controller.changePage(index),
//                     splashColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     child: Stack(
//                       children: [
//                         AnimatedContainer(
//                           duration: Duration(seconds: 1),
//                           curve: Curves.fastLinearToSlowEaseIn,
//                           width: index == controller.currentPage
//                               ? displayWidth * .32
//                               : displayWidth * .18,
//                           alignment: Alignment.center,
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             curve: Curves.fastLinearToSlowEaseIn,
//                             height:
//                                 index == currentIndex ? displayWidth * .11 : 0,
//                             width:
//                                 index == currentIndex ? displayWidth * .31 : 0,
//                             decoration: BoxDecoration(
//                               color: index == currentIndex
//                                   ? Colors.blueAccent.withOpacity(.2)
//                                   : Colors.transparent,
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ))),
//           )),
//     );
//   }
// }
