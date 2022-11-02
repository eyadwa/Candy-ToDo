import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Core/Const/ColorsApp.dart';
import '../Screen/Profile.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: AppColors.blueAppbartext,
                    borderRadius: BorderRadius.circular(100)),
                height: 40,
                width: 40,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(left: 32, top: 75, right: 50),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0.01, top: 75, right: 32),
                child: Text(
                  "Tiffany",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blueAppbartext),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: double.infinity,
            height: 1,
            color: AppColors.blueAppbartext,
          ),
          DrawerText(AppLocalizations.of(context)!.to_do),
          DrawerText(AppLocalizations.of(context)!.scheduler),
          DrawerText(AppLocalizations.of(context)!.notifications),
          DrawerText(AppLocalizations.of(context)!.profile),
          DrawerText("Logout"),
          Spacer(),
          Container(
            alignment: Alignment(-0.8, 0),
            width: double.infinity,
            height: 75,
            child: const Text(" @ 2017 Candy",style:  TextStyle(
                color: AppColors.blueAppbartext,
                fontSize: 18,
                fontWeight: FontWeight.w200),),
          )
        ],
      ),
    );
  }

  Widget DrawerText(String _title) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      alignment: Alignment(-0.8, 0),
      width: double.infinity,
      height: 75,
      child: TextButton(
        onPressed: () {},
        child: Text(
          _title,
          textAlign: TextAlign.start,
          style: const TextStyle(
              color: AppColors.blueAppbartext,
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
