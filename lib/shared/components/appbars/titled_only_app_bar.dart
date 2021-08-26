
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import '../size_config.dart';

TitledOnlyAppBar(String appbarTitle){

  return AppBar(
    backgroundColor: AppColors.yellow,
    centerTitle: true,
    title: Text(appbarTitle, style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(33)),),
    leading: Icon(Icons.menu, color: Colors.white, size: getProportionateText(40),),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
  );
}