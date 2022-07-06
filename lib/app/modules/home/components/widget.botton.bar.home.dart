import 'package:app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DwBottonBarHome extends StatefulWidget {
  const DwBottonBarHome({Key key}) : super(key: key);

  @override
  State<DwBottonBarHome> createState() => _DwBottonBarHomeState();
}

class _DwBottonBarHomeState extends State<DwBottonBarHome> {
  RxInt _currentIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: _currentIndex.value,
        onTap: (index) => {_currentIndex.value = index},
        type: BottomNavigationBarType.fixed,
        backgroundColor: appThemeData().bottomAppBarColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        elevation: 6.0,
        items: [Icons.home, Icons.insert_chart, Icons.event_note, Icons.info]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: '',
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex.value == key
                            ? Colors.blue[600]
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Icon(value),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
