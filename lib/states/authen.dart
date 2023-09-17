import 'package:flutter/material.dart';
import 'package:monitordata/utility/app_constant.dart';
import 'package:monitordata/utility/app_service.dart';
import 'package:monitordata/utility/app_snackbar.dart';
import 'package:monitordata/widgets/widget_button.dart';
import 'package:monitordata/widgets/widget_form.dart';
import 'package:monitordata/widgets/widget_text.dart';
import 'package:monitordata/widgets/widgets_image_assets.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const WidgetImageAssets(
                  size: 80,
                ),
                const SizedBox(
                  width: 8,
                ),
                WidgetText(
                  data: 'Monitor \nData test',
                  textStyle: AppConstant().h1Style(size: 24),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            WidgetForm(
              hintText: 'Phone Number',
              inputType: TextInputType.phone,
              textEditingController: textEditingController,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 250,
              child: WidgetButton(
                label: 'Login',
                pressFunc: () {
                  if (textEditingController.text.isEmpty) {
                    // have space

                    AppSnackBar(
                            title: 'Phone Number',
                            message: 'กรุณากรอกเบอร์โทรศัพท์ด้วย')
                        .errorSnackBar();
                  } else {
                    if (textEditingController.text.length != 10) {
                      AppSnackBar(
                              title: 'เบอร์ผิด',
                              message: 'โทรศัพท์ต้องมี 10 หลัก')
                          .errorSnackBar();
                    } else {
                      AppService().processSendOTP(
                          phoneNumber: textEditingController.text);
                    }
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
