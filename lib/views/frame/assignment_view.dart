import 'package:activity_page/views/pages/assignment_detail_page.dart';
import 'package:flutter/material.dart';

import '../components.dart';
import 'package:get/get.dart';

class AssignmentView extends StatelessWidget {
  const AssignmentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8, right: 16),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              DownArrowButton(buttonName: 'All'),
              SizedBox(width: 8),
              DownArrowButton(buttonName: 'Assigned'),
            ],
          ),
          const SizedBox(height: 16),
          AssignmentCard(onTap: () {
            Get.to(() => const AssignmentDetailView());
          }),
          AssignmentCard(onTap: () {
            Get.to(() => const AssignmentDetailView());
          }),
          AssignmentCard(onTap: () {
            Get.to(() => const AssignmentDetailView());
          }),
          AssignmentCard(onTap: () {
            Get.to(() => const AssignmentDetailView());
          }),
          AssignmentCard(onTap: () {
            Get.to(() => const AssignmentDetailView());
          }),
        ],
      ),
    );
  }
}
