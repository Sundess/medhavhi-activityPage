import 'package:flutter/material.dart';
import 'package:activity_page/views/components.dart';
import 'package:get/get.dart';
import '../../controller/activity_controllers.dart';
import 'package:activity_page/util/project_colors.dart';

class ResultView extends StatelessWidget {
  ResultView({Key? key}) : super(key: key);
  final ResultController resultController = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        fixedSize: const Size.fromHeight(40),
                        padding: const EdgeInsets.only(
                            top: 8, bottom: 8, left: 16, right: 8),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xff2BB8D6),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          context: context,
                          builder: (context) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 16),
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: 40,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Select year',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 16),
                                const Divider(height: 2, color: Colors.grey),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 40.0, horizontal: 16),
                                  child: Wrap(
                                    children: [
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[0],
                                        index: 0,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[1],
                                        index: 1,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[2],
                                        index: 2,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[3],
                                        index: 3,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[4],
                                        index: 4,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[5],
                                        index: 5,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                      CustomModalButton(
                                        buttonName:
                                            resultController.yearList[6],
                                        index: 6,
                                        yearIndexController: resultController
                                            .yearIndexController,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '2079',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Icon(Icons.keyboard_arrow_down, color: Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: const Color(0xff2BB8D6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  unselectedLabelColor: const Color(0xff30323D),
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                  labelStyle: const TextStyle(fontSize: 12),
                  tabs: const [
                    SizedBox(
                      height: 40.0,
                      width: 88,
                      child: Tab(text: 'Final'),
                    ),
                    SizedBox(
                      height: 40.0,
                      width: 88,
                      child: Tab(text: '3rd term'),
                    ),
                    SizedBox(
                      height: 40.0,
                      width: 88,
                      child: Tab(text: '2nd term'),
                    ),
                    SizedBox(
                      height: 40.0,
                      width: 88,
                      child: Tab(text: '1st term'),
                    ),
                  ],
                ),
                // Container(
                //   height: 56,
                //   padding: const EdgeInsets.symmetric(vertical: 8),
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children: [
                //       TermButton(
                //         termName: 'Final',
                //         index: 0,
                //         indexController: resultController.termIndexController,
                //       ),
                //       TermButton(
                //         termName: '3rd term',
                //         index: 1,
                //         indexController: resultController.termIndexController,
                //       ),
                //       TermButton(
                //         termName: '2nd term',
                //         index: 2,
                //         indexController: resultController.termIndexController,
                //       ),
                //       TermButton(
                //         termName: '1st term',
                //         index: 3,
                //         indexController: resultController.termIndexController,
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              // physics: NeverScrollableScrollPhysics(),
              children: [
                ResultBody(resultController: resultController),
                ResultBody(resultController: resultController),
                ResultBody(resultController: resultController),
                ResultBody(resultController: resultController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResultBody extends StatelessWidget {
  const ResultBody({
    super.key,
    required this.resultController,
  });

  final ResultController resultController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ProjectColors.spanishGrey.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MarkTile(
                  title: 'GPA',
                  marks: resultController.userMarkDetailsData.gpa),
              MarkTile(
                  title: 'Grade',
                  marks: resultController.userMarkDetailsData.grade),
              MarkTile(
                  title: 'Position',
                  marks: resultController.userMarkDetailsData.position),
              MarkTile(
                  title: 'Attendance',
                  marks: resultController.userMarkDetailsData.attendence),
            ],
          ),
          const SubjectMarkRow(
            subject: 'Subject',
            theory: 'Theory',
            practical: 'Practical',
            gradePoint: 'Grade Point',
            grade: 'Grade',
            isBold: true,
          ),
          for (var item in resultController.getSubjectMarkRowList()) item,
          const EcaMarkRow(
            ecaName: 'ECA',
            ecaGrade: 'Grade',
            ecaRemarks: 'Remarks',
            isBold: true,
          ),
          for (var item in resultController.getEcaMarkRowList()) item,
        ],
      ),
    );
  }
}
