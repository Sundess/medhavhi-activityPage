import 'package:activity_page/controller/activity_controllers.dart';
import 'package:activity_page/views/frame/assignment_view.dart';
import 'package:activity_page/views/frame/attendance_view.dart';
import 'package:flutter/material.dart ';
import 'frame/result_view.dart';

class ActivityPage extends StatelessWidget {
  ActivityPage({Key? key}) : super(key: key);

  final AttendanceController attendanceController = AttendanceController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: const Color(0xff2BB8D6),
                  borderRadius: BorderRadius.circular(4),
                ),
                unselectedLabelColor: const Color(0xff30323D),
                unselectedLabelStyle: const TextStyle(fontSize: 12),
                labelStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 2),
                tabs: const [
                  Tab(
                    text: 'Assignment',
                  ),
                  Tab(
                    text: 'Attendance',
                  ),
                  Tab(
                    text: 'Result',
                  ),
                  Tab(
                    text: 'Discipline',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const AssignmentView(),
                  AttendenceView(attendanceController: attendanceController),
                  ResultView(),
                  const Text('Assign'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
