import 'package:dialogs_example/controller/my_controller.dart';
import 'package:dialogs_example/widget/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CustomDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ButtonWidget(
        text: 'Read Terms and conditions to register',
        onClicked: () => showCustomDialog(context),
      );

  void showCustomDialog(BuildContext context) => showDialog(
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<CheckboxController>(
              init: CheckboxController(),
              builder: (controller) => Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 12),
                  Text(
                    'This is our terms',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Read Terms and conditions and agree to register',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.greenAccent,
                        activeColor: Colors.red,
                        value: controller.checkbox,
                        onChanged: (value) {
                          controller.acceptTerms();
                          Navigator.of(context).pop();
                        },
                      ),
                      Text('I agree'),
                    ],
                  ),
                  // ElevatedButton(
                  //     child: Text('I agree'),
                  //     onPressed: () {
                  //       Navigator.of(context).pop();

                  //     })
                ],
              ),
            ),
          ),
        ),
        context: context,
        barrierDismissible: false,
      );
}
