import 'package:activity_page/views/components.dart';
import 'package:flutter/material.dart';
import 'package:activity_page/util/project_colors.dart';
import 'package:activity_page/util/project_text_styles.dart';
import 'package:get/get.dart';

class AssignmentDetailView extends StatelessWidget {
  const AssignmentDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 16.0, top: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text('Assignment details'),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: const Color(0xff30323D).withOpacity(0.2),
                      child: const Icon(
                        Icons.question_mark_outlined,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.2),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur. Volutpat morbi sed amet gravida massa.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      SubjectCodeCard(subjectCode: 'Sc301'),
                      SizedBox(width: 8),
                      Text(
                        'Science',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.grey.withOpacity(0.3),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Aalok Sir',
                        style: TextStyle(
                            fontSize: 12, color: ProjectColors.jetBlack),
                      ),
                      const Spacer(),
                      const DaysRemainingLogo(
                        color: ProjectColors.red,
                        remainingTime: '2 hrs',
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Text(
                        'Assigned on:',
                        style: ProjectTextStyles.bodyLarge,
                      ),
                      SizedBox(width: 16),
                      Text(
                        '14 Apr 2021',
                        style: ProjectTextStyles.bodySmall,
                      ),
                      Spacer(),
                      Text(
                        'Due date:',
                        style: ProjectTextStyles.bodyLarge,
                      ),
                      SizedBox(width: 16),
                      Text(
                        '14 Apr 2021',
                        style: ProjectTextStyles.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Reference Material',
                    style: ProjectTextStyles.bodySmall
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  const DocumentCard(
                    title: 'Evolution chapter notes.',
                    storage: '32.5 MB',
                  ),
                  Row(
                    children: [
                      Text(
                        'Latest submission',
                        style:
                            ProjectTextStyles.bodySmall.copyWith(fontSize: 14),
                      ),
                      const Spacer(),
                      TextButton(onPressed: () {}, child: Text('View all'))
                    ],
                  ),
                  const DocumentCard(
                    title: 'Evolution chapter notes.',
                    storage: '32.5 MB',
                    suffixIcon: Icon(Icons.more_vert),
                  ),
                  const SizedBox(height: 16),
                  const DocumentCard(
                    title: 'Evolution chapter notes.',
                    storage: '32.5 MB',
                    suffixIcon: Icon(Icons.more_vert),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Teacher's Comment",
                    style: ProjectTextStyles.bodySmall
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'You can’t copy from ChatGPT, please resubmit the assignment along with 2 different ways to solve the same problem.',
                    style: ProjectTextStyles.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DocumentCard extends StatelessWidget {
  const DocumentCard({
    super.key,
    this.prefixIcon = const Icon(Icons.article),
    required this.title,
    required this.storage,
    this.suffixIcon = const Icon(Icons.download),
  });
  final Icon prefixIcon;
  final String title;
  final String storage;
  final Icon suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ProjectColors.spanishGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: prefixIcon,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: ProjectTextStyles.body,
              ),
              Text(
                storage,
                style: ProjectTextStyles.bodySmall.copyWith(fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: suffixIcon),
        ],
      ),
    );
  }
}
