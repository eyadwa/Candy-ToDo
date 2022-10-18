import 'package:candy_todo/Core/Const/ColorsApp.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
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
          Container(color: AppColors.AppbarColor,
            height: 112,
            child:  Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.blueAppbartext,
                      borderRadius: BorderRadius.circular(100)
                  ),height:60 ,width: 60,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                ),
                const SizedBox(width: 10),

                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Row(
                        children: const[
                          Text(
                            "Mohammed eyad wafai",
                            style: TextStyle(
                                fontSize: 23,
                                color: AppColors.blueAppbartext),
                          ),

                        ],
                      )
                       , SizedBox(height: 1),
                       const  Text(
                          "Mohammed eyad wafai",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15,
                              color: AppColors.blueAppbartext),
                        ),
                      ],
                    )

              ],
            )
          )
        ],
      ),
    );
  }
}
