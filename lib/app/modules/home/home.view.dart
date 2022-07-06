import 'package:app/app/data/repository/task.repository.dart';
import 'package:app/app/global/widgets/widget.card.dart';
import 'package:app/app/modules/home/components/widget.app.bar.home.dart';
import 'package:app/app/modules/home/components/widget.botton.bar.home.dart';
import 'package:app/app/modules/home/components/widget.drawer.dart';
import 'package:app/app/modules/home/components/widget.task.home.dart';
import 'package:app/app/modules/home/home.controller.dart';
import 'package:app/app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DwAppBarHome(controller: controller),
      drawer: DwDrawer(itens: controller.findItensDrawer()),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.all(20.0),
            sliver: SliverToBoxAdapter(
              child: Text(
                'Dashboard',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(.01),
            sliver: SliverToBoxAdapter(
              child: Flexible(
                child: Row(
                  children: <Widget>[
                    DwCard(
                        title: 'Total Cases',
                        count: '1.81 M',
                        color: Colors.orange),
                    DwCard(title: 'Deaths', count: '105 K', color: Colors.red),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(.01),
            sliver: SliverToBoxAdapter(
              child: Flexible(
                child: Row(
                  children: <Widget>[
                    DwCard(
                      title: 'Temperatura',
                      count: '391 K',
                      color: Colors.green,
                    ),
                    DwCard(
                      title: 'PH',
                      count: '1.31 M',
                      color: Colors.lightBlue,
                    ),
                    DwCard(
                      title: 'Oxigenação',
                      count: 'N/A',
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(2),
            sliver: SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: appThemeData().backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                height: Get.height * 0.6,
                child: DwListCardsTasks(repository: controller.taskRepository),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: DwBottonBarHome(),
    );
  }

  DwAppBarHome newMethod() => DwAppBarHome();
}
