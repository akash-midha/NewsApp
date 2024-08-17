import 'package:flutter/material.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/text.dart';


class appBar extends StatelessWidget implements PreferredSizeWidget {
  appBar({Key? key}) : preferredSize = Size.fromHeight(50), super(key: key);


  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldText(text: 'Tech', color: AppColors.lightwhite, size: 20),
            modifiedText(text: 'Newz', size: 20, color: AppColors.lightwhite)
          ],
        )
      ),
      centerTitle: true,
    );
  }

}

