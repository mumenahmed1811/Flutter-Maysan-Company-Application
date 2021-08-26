
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/appbars/titled_only_app_bar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import 'components/employee_item.dart';

class WorkingTeamScreen extends StatefulWidget {
  const WorkingTeamScreen({Key? key}) : super(key: key);

  @override
  _WorkingTeamScreenState createState() => _WorkingTeamScreenState();
}

class _WorkingTeamScreenState extends State<WorkingTeamScreen> {

  List emplyeeItems = [
    EmployeeItem("محمود هلال ", "مهندس برمجيات"),
    EmployeeItem("محمود هلال", "مهندس برمجيات"),
    EmployeeItem("محمود هلال", "مهندس برمجيات"),
    EmployeeItem("محمود هلال", "مهندس برمجيات"),
    EmployeeItem("محمود هلال", "مهندس برمجيات"),
  ];

  int _cIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: TitledOnlyAppBar("فريق العمل"),
          backgroundColor: AppColors.bgColor,


          body: Center(
            child: Container(

              width: SizeConfig.screenWidth * 0.95,
              child: ListView.builder(
                  itemCount: emplyeeItems.length,
                  itemBuilder: (context, i){
                    return emplyeeItems[i];
                  }
              ),
            ),
          ),

          bottomNavigationBar: BNB(),

        )
    );
  }
}
