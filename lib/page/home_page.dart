import 'package:dialogs_example/controller/my_controller.dart';
import 'package:dialogs_example/main.dart';

import 'package:dialogs_example/widget/custom_dialog_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
    
    child: Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDialogWidget(),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {},
                  child: GetBuilder<CheckboxController>(
                    init: CheckboxController(),
                    builder: (controller) => Container(
                    height:50,
                    width:200,
                      decoration: BoxDecoration(
                        color:
                          controller.checkbox ? Colors.green : Colors.black,
                        borderRadius: BorderRadius.circular(26)
                      ),
                      child: Center(child: Text('Register', style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),))),
                )),
              ],
            ),
          ),
        )
  );
}
