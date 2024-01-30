import 'package:flutter/material.dart';
import 'package:tasks/screens/home/Presentation/widgts/app_bar/bottom_sheet.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(21, 28, 35, 1),
      centerTitle: true,
      leading: IconButton(
        color: Colors.white,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return const HomeBottomSheet();
              });
        },
        icon: const Icon(Icons.add_outlined),
      ),
      title: const Text('Задачи', style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
