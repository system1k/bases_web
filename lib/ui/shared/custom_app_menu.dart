import 'package:flutter/material.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(

            text: 'Contador Stateful', 
            onPressed: () => navigationService.navigateTo('/stateful'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Contador Provider', 
            onPressed: () => navigationService.navigateTo('/provider'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Otra ruta', 
            onPressed: () => navigationService.navigateTo('/otherRoute'),
            color: Colors.black
          )

        ],
      ),
    );
  }
}