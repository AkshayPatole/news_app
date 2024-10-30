// import 'package:flutter/material.dart';

// class CustomSnackBarWidget extends StatelessWidget {
//   final String message;
//   final Color? backgroundColor;

//   CustomSnackBarWidget({
//     required this.message,
//     this.backgroundColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SnackBar(

//       content: Text(message),
//       backgroundColor: backgroundColor,
//     );
//   }
// }

// // Example Usage:
// // CustomSnackBarWidget(
// //   message: 'Item deleted',
// //   icon: Icons.delete,
// //   backgroundColor: Colors.red,
// //   onUndo: () {
// //     // Handle undo action
// //   },
// // );
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

customAlertBox(BuildContext context, String text) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.tealColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
          ),
        ),
        title: Text(text),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Ok",
              style: TextStyle(
                color: AppColors.blackColor,
              ),
            ),
          )
        ],
      );
    },
  );
}
