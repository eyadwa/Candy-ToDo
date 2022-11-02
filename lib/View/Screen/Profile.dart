import 'package:candy_todo/Core/Const/ColorsApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../Widget/drawerwidget.dart';
class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   drawer: DrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          '${ AppLocalizations.of(context)!.profile}',
          style: TextStyle(color: AppColors.blueAppbartext),
        ),
        backgroundColor: AppColors.AppbarColor,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.edit_outlined,
              color: AppColors.blueAppbartext,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
              color: AppColors.themColor,
              height: 112,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.blueAppbartext,
                        borderRadius: BorderRadius.circular(100)),
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Mohammed eyad wafai",
                            style: TextStyle(
                                fontSize: 23, color: AppColors.blueAppbartext),
                          ),
                        ],
                      ),
                      SizedBox(height: 1),
                      const Text(
                        "eyadalwafai1993@gmail.com",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 10, color: AppColors.blueAppbartext),
                      ),
                    ],
                  )
                ],
              )),
           Padding(
            padding: EdgeInsets.only(left: 16, top: 10, bottom: 20),
            child: Text(
              AppLocalizations.of(context)!.notification_settings,
              style: TextStyle(color: AppColors.blueAppbartext),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 56,
            width: 375,
            child: Row(
              children: [
                 Text(
                   AppLocalizations.of(context)!.get_email_notifications,
                  style:
                      TextStyle(color: AppColors.blueAppbartext, fontSize: 12),
                ),
                Spacer(),
                buildiosSwitce(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 56,
            width: 375,
            child: Row(
              children: [
                 Text(
                  AppLocalizations.of(context)!.vibrate_on_alart,
                  style:
                      TextStyle(color: AppColors.blueAppbartext, fontSize: 12),
                ),
                Spacer(),
                buildiosSwitce(),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(top: 25, left: 16, bottom: 36),
            child: Text(
              AppLocalizations.of(context)!.floss_settings,
              style: TextStyle(color: AppColors.blueAppbartext),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 56,
            width: 375,
            child: Row(
              children: [
                 Text(
                  AppLocalizations.of(context)!.share_your_task_completion_status,
                  style:
                      TextStyle(color: AppColors.blueAppbartext, fontSize: 12),
                ),
                Spacer(),
                buildiosSwitce(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            height: 56,
            width: 375,
            child: Row(
              children: [
                 Text(
                  AppLocalizations.of(context)!.share_your_task_completion_status,
                  style:
                      TextStyle(color: AppColors.blueAppbartext, fontSize: 12),
                ),
                Spacer(),
                buildiosSwitce(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.blueAppbartext,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          color: AppColors.themColor,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.menu,
                          color: AppColors.IconColor,
                          size: 35,
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ) ,
                  MaterialButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.lock_clock,
                          color: AppColors.IconColor,
                          size: 35,
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ) ,

                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.
                          doorbell_rounded,
                          color: AppColors.IconColor,
                          size: 35,
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ) ,
                  MaterialButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.person
                          ,
                          color: AppColors.IconColor,
                          size: 35,
                        ),
                      ],
                    ),
                    minWidth: 40,
                  ) ,

                ],
              )
            ],
          ),
        ),

        // items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,)
        //   ,label: "Home",),BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,)
        //   ,label: "Home",),BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,)
        //   ,label: "Home",),BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,)
        //   ,label: "Home",),
        // ],
      ),
    );
  }

  Widget BuildSwitch() => Transform.scale(
        scale: 2,
        child: Switch.adaptive(
            activeColor: Colors.white,
            activeTrackColor: AppColors.SwitchColor,
            value: true,
            onChanged: (value) => this.value = value),
      );

  Widget buildiosSwitce() => Transform.scale(
      scale: 1.3,
      child: CupertinoSwitch(
        activeColor: AppColors.SwitchColor,
        value: value,
        onChanged: (value) => this.value = !value,
      ));
}
