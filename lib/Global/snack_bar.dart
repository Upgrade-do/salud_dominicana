// import 'dart:js';
// import 'package:flash/flash.dart';
// import 'package:flutter/material.dart';


    // showFlash(
    //   context: context,
    //   duration: const Duration(seconds: 4),
    //   builder: (context, controller) {
    //     return Container(
    //       child: Flash.bar(
    //         controller: controller,
    //         backgroundGradient: LinearGradient(
    //           colors: [Colors.yellow, Colors.amber],
    //         ),
    //         // Position is only available for the "bar" named constructor and can be bottom/top.
    //         position: FlashPosition.bottom,
    //         // Allow dismissal by dragging down.
    //         enableDrag: true,
    //         // Allow dismissal by dragging to the side (and specify direction).
    //         horizontalDismissDirection:
    //         HorizontalDismissDirection.startToEnd,
    //         margin: const EdgeInsets.all(8),
    //         borderRadius: const BorderRadius.all(Radius.circular(8)),
    //         // Make the animation lively by experimenting with different curves.
    //         forwardAnimationCurve: Curves.easeOutBack,
    //         reverseAnimationCurve: Curves.slowMiddle,
    //         // While it's possible to use any widget you like as the child,
    //         // the FlashBar widget looks good without any effort on your side.
    //         child: FlashBar(
    //           title: Text(
    //             'You are seeing a snackbar!',
    //             style: Theme.of(context).textTheme.headline6,
    //           ),
    //           message: Text('This is something'),
    //           primaryAction: IconButton(
    //             // This icon's color is by default re-themed to have the primary color
    //             // from the material theme - blue by default.
    //             icon: Icon(Icons.ac_unit),
    //             onPressed: () {},
    //           ),
    //           icon: Icon(
    //             Icons.info,
    //             // This color is also pulled from the theme. Let's change it to black.
    //             color: Colors.black,
    //           ),
    //           shouldIconPulse: false,
    //           showProgressIndicator: true,
    //         ),
    //       ),
    //     );
    //   },
    // );
