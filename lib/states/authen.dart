import 'package:flutter/material.dart';
import 'package:monitordata/utility/app_constant.dart';
import 'package:monitordata/widgets/widget_text.dart';
import 'package:monitordata/widgets/widgets_image_assets.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 250,
        child: Row(
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
      ),
    ));
  }
}
