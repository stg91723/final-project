import 'package:flutter/material.dart';
import 'package:classproject/main.dart';
import 'package:classproject/pages/schedule.dart';
import 'package:classproject/pages/grad.dart';
import 'package:classproject/pages/examinfo.dart';
import 'package:classproject/pages/attendancemanagement.dart';
import 'package:classproject/pages/leavemanagement.dart';
import 'package:classproject/pages/eventschedule.dart';
import 'package:classproject/pages/notification.dart';
import 'package:classproject/pages/teachingresources.dart';
import 'package:classproject/pages/studentinfo.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('高雄科技大學-虛擬班導'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              '使用者名稱: $username',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              '學號: $username', // Assuming student ID is the same as username
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              '班級: 資工三甲',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: [
                MenuCard(
                  title: '課表資訊',
                  icon: Icons.calendar_today,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Schedule()), // 進入課表資訊頁面
                    );
                  },
                ),
                MenuCard(
                  title: '考試通知',
                  icon: Icons.notifications,
                  onPressed: () {
                    // Handle Exam Notifications button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ExamInfoPage()), // 進入考試通知頁面
                    );
                  },
                ),
                MenuCard(
                  title: '點名系統',
                  icon: Icons.assignment_turned_in,
                  onPressed: () {
                    // Handle Attendance Management button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AttendanceManagementPage()), // 進入點名系統頁面
                    );
                  },
                ),
                MenuCard(
                  title: '請假系統',
                  icon: Icons.airplane_ticket,
                  onPressed: () {
                    // Handle Grade Management button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeaveManagementSystem()), // 進入請假系統頁面
                    );
                  },
                ),
                MenuCard(
                  title: '成績查詢',
                  icon: Icons.bar_chart,
                  onPressed: () {
                    // Handle Grade Management button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GradePage()), // 進入成績查詢頁面
                    );
                  },
                ),
                MenuCard(
                  title: '活動資訊',
                  icon: Icons.event,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventSchedulePage()), // 進入活動資訊頁面
                    );
                  },
                ),
                MenuCard(
                  title: '教學資源',
                  icon: Icons.folder_shared,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TeachingMaterialsPage()), // 進入教學資源頁面
                    );
                  },
                ),
                MenuCard(
                  title: '提醒事項',
                  icon: Icons.alarm,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NotificationPage()), // 進入提醒事項頁面
                    );
                  },
                ),
                MenuCard(
                  title: '個人資訊',
                  icon: Icons.person,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentInfoPage()), // 進入提醒事項頁面
                    );
                  },
                ),
                MenuCard(
                  title: '登出',
                  icon: Icons.logout,
                  onPressed: () {
                    // Handle Class Schedule button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentManagementApp()), // 返回登入畫面
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle Home button press
                  },
                  icon: Icon(Icons.home),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {
                    // Handle Settings button press
                  },
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const MenuCard({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 2.0,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48.0),
              SizedBox(height: 8.0),
              Text(
                title,
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}