import 'package:activity_page/model/eca_mark.dart';
import 'package:activity_page/model/subject_mark.dart';
import 'package:activity_page/model/user_overall_mark.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:activity_page/views/components.dart';

class AttendanceController extends GetxController {
  RxInt index = 1.obs;
  RxBool isScrolled = true.obs;
  RxBool isFABVisible = true.obs;

  List<Widget> activityBodyViews = [];

  List<DateTime> presentDates = [
    DateTime(2023, 5, 1),
    DateTime(2023, 5, 2),
    DateTime(2023, 5, 3),
    DateTime(2023, 5, 4),
    DateTime(2023, 5, 5),
    DateTime(2023, 5, 7),
    DateTime(2023, 5, 8),
    DateTime(2023, 5, 9),
    DateTime(2023, 5, 10),
    DateTime(2023, 5, 14),
    DateTime(2023, 5, 15),
    DateTime(2023, 5, 16),
    // Add more DateTime objects as needed
  ];
  List<DateTime> absentDates = [
    DateTime(2023, 5, 11),
    DateTime(2023, 5, 12),
    // Add more DateTime objects as needed
  ];

  List<DateTime> holidayDates = [
    DateTime(2023, 5, 21),
  ];

// List<DateTime> holidayDate = [
//   DateTime(2023, 5, 6),
//   DateTime(2023, 5, 13),
//   DateTime(2023, 5, 20),
//   DateTime(2023, 5, 21),
//   DateTime(2023, 5, 27),
// ];
}

class ResultController extends GetxController {
  RxInt termIndexController = 0.obs;
  RxInt yearIndexController = 0.obs;

  List<String> yearList = [
    '2080',
    '2079',
    '2078',
    '2077',
    '2076',
    '2075',
    '2074',
  ];

  UserOverallMark userMarkDetailsData = UserOverallMark(
      gpa: '3.6', grade: 'A', position: '5th', attendence: '95%');

  List<Subject> subjectData = [
    Subject(
        subjectName: 'Science',
        theoryMark: 'A',
        practicalMark: 'A+',
        gradePointMark: '3.6',
        gradeMark: 'A'),
    Subject(
        subjectName: 'Com. maths',
        theoryMark: 'A',
        practicalMark: '-',
        gradePointMark: '4.0',
        gradeMark: 'A+'),
    Subject(
        subjectName: 'Nepali',
        theoryMark: 'A+',
        practicalMark: 'A',
        gradePointMark: '3.6',
        gradeMark: 'A'),
    Subject(
        subjectName: 'English',
        theoryMark: 'B',
        practicalMark: 'A+',
        gradePointMark: '3.6',
        gradeMark: 'A'),
    Subject(
        subjectName: 'Social',
        theoryMark: 'A+',
        practicalMark: 'A+',
        gradePointMark: '4.0',
        gradeMark: 'A+'),
    Subject(
        subjectName: 'EPH',
        theoryMark: 'A',
        practicalMark: 'B+',
        gradePointMark: '3.2',
        gradeMark: 'B'),
    Subject(
        subjectName: 'Account(E)',
        theoryMark: 'A+',
        practicalMark: 'A+',
        gradePointMark: '3.6',
        gradeMark: 'A'),
    Subject(
        subjectName: 'Opt.maths(E)',
        theoryMark: 'A+',
        practicalMark: '-',
        gradePointMark: '4.0',
        gradeMark: 'A'),
  ];

  List<EcaMark> ecaMarkData = [
    EcaMark(ecaName: 'Dancing', ecagrade: 'A', ecaRemarks: 'Excellent'),
    EcaMark(ecaName: 'Cursive', ecagrade: 'A', ecaRemarks: 'Good'),
    EcaMark(ecaName: 'Karate', ecagrade: 'A', ecaRemarks: 'Very Good')
  ];

  List<SubjectMarkRow> getSubjectMarkRowList() {
    List<SubjectMarkRow> subjectMarkRowList = <SubjectMarkRow>[];
    for (var data in subjectData) {
      subjectMarkRowList.add(
        SubjectMarkRow(
            subject: data.subjectName,
            theory: data.theoryMark,
            practical: data.practicalMark,
            gradePoint: data.gradePointMark,
            grade: data.gradeMark),
      );
    }
    return subjectMarkRowList;
  }

  List<EcaMarkRow> getEcaMarkRowList() {
    List<EcaMarkRow> ecaMarkRowList = [];
    for (var data in ecaMarkData) {
      ecaMarkRowList.add(
        EcaMarkRow(
            ecaName: data.ecaName,
            ecaGrade: data.ecagrade,
            ecaRemarks: data.ecaRemarks),
      );
    }
    return ecaMarkRowList;
  }
}
