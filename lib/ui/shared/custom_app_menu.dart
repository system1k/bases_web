import 'package:flutter/material.dart';
import 'package:bases_web/locator.dart';
import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';


class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( _, constraints) => (constraints.maxWidth > 520)
        ? const _TabletDesktopMenu()
        : const _MobileMenu()
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton( 

            text: 'Contador Stateful', 
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Contador Provider', 
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Otra ruta', 
            onPressed: () => locator<NavigationService>().navigateTo('/otherRoute'),
            color: Colors.black
          )

        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton( 

            text: 'Contador Stateful', 
            onPressed: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Contador Provider', 
            onPressed: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black
          ),

          const SizedBox(width: 10),

          CustomFlatButton(
            text: 'Otra ruta', 
            onPressed: () => locator<NavigationService>().navigateTo('/otherRoute'),
            color: Colors.black
          )

        ],
      ),
    );
  }
}
