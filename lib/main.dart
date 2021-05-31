import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suriyawonwin/model/course.dart';
import 'package:suriyawonwin/model/sidebar.dart';
import 'components/cards/recent_course_card.dart';
import 'components/sidebar_row.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kBackgroundColor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavBar(),
                ResentCourseCard(
                  course: recentCourses[0],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RawMaterialButton(
            onPressed: () {
              print('Sidebar button pressed');
            },
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            constraints: BoxConstraints(
              maxHeight: 40.0,
              maxWidth: 40.0
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    offset: Offset(0,12),
                    blurRadius: 16.0
                  )
                ],
              ),
              child: Image.asset(
                'assests/icons/icon-sidebar.png',
                color: kPrimaryLabelColor,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 14.0
              ),
            ),
          ),
        ],
      ),
    );
  }
}
