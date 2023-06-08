import 'package:flutter/material.dart'
    show
        BottomNavigationBar,
        BottomNavigationBarItem,
        BuildContext,
        Icon,
        Icons,
        StatelessWidget,
        Widget;
import 'package:provider/provider.dart';

import '../provider/ui_provider.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvidr>(context);
    final currentIndex = uiProvider.selectedMenuOpt;
    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      currentIndex: currentIndex,
      elevation: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Historial',
        )
      ],
    );
  }
}
