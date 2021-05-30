import 'package:flutter/material.dart';
import 'package:suriyawonwin/components/sidebar_row.dart';
import 'package:suriyawonwin/model/sidebar.dart';
import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(34.0),
          )),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assests/images/profile_ohm.png'),
                  radius: 21.0,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suriya Chayatummgoon',
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'License ends on 21 Jun 2021',
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.08,
            ),
            SidebarRow(
              item: sidebarItem[0],
            ),
            SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(
              height: 32.0,
            ),
            Spacer(),
            Row(
              children: [
                Image.asset('assests/icons/icon-logout.png',
                  width: 17.0,
                ),
                SizedBox(width: 12.0,),
                Text('Logout',
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}