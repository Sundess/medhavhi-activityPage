import 'package:activity_page/util/project_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatusTile extends StatelessWidget {
  final String bigName;
  final String smallName;
  final Color textColor;
  const StatusTile({
    required this.bigName,
    required this.smallName,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 80,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.1,
            blurRadius: 0.1,
            offset: const Offset(1, 1), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(4),
      ),
      // color: Colors.red,
      child: Column(
        children: [
          Text(
            bigName,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            smallName,
            style: TextStyle(fontSize: 10, color: textColor),
          ),
        ],
      ),
    );
  }
}

class HolidayCard extends StatelessWidget {
  const HolidayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        padding: const EdgeInsets.only(
          top: 4,
          left: 8,
          bottom: 8,
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffE63946),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '21',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Dec',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Tamu Loshar',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff30323D),
                  ),
                ),
                Text(
                  '7 Days remaning',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff30323D),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DateTile extends StatelessWidget {
  final String dateNum;
  final Color? backgroundColor;
  const DateTile({
    required this.dateNum,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7, bottom: 2, top: 2),
      child: Container(
        margin: const EdgeInsets.only(left: 4, bottom: 4),
        // height: 36,
        // width: 42,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: backgroundColor,
        ),
        child: Text(
          dateNum,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: backgroundColor == Colors.white
                  ? Colors.black
                  : backgroundColor == Colors.transparent
                      ? Colors.black.withOpacity(0.2)
                      : backgroundColor == const Color(0xffFECA55)
                          ? Colors.black
                          : Colors.white),
        ),
      ),
    );
  }
}

class DownArrowButton extends StatelessWidget {
  const DownArrowButton({
    required this.buttonName,
    super.key,
  });

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize: const Size.fromHeight(40),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xff2BB8D6),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonName,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black),
        ],
      ),
    );
  }
}

class AssignmentCard extends StatelessWidget {
  final Function()? onTap;
  const AssignmentCard({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 2),
                spreadRadius: -2,
                blurRadius: 4,
                blurStyle: BlurStyle.outer,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SubjectCodeCard(subjectCode: 'Sc301'),
                  SizedBox(width: 8),
                  Text(
                    'Draw the life-cycle of frog',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Aalok Sir',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                  const Spacer(),
                  const DaysRemainingLogo(),
                ],
              ),
              const Divider(
                thickness: 0.1,
                color: Colors.black,
              ),
              const SizedBox(height: 12),
              const Text(
                'Write an essay on life cycle of a frog and explain it with help of well labelled diagram.',
                style: TextStyle(
                  color: Color(0xff9A9A9A),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DaysRemainingLogo extends StatelessWidget {
  const DaysRemainingLogo({
    this.color = const Color(0xff37B76C),
    this.remainingTime = '4 days',
    super.key,
  });
  final Color color;
  final String remainingTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2, left: 2, bottom: 2, right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: color,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 16,
            child: const Icon(
              Icons.hourglass_empty_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            remainingTime,
            style: ProjectTextStyles.body,
          ),
        ],
      ),
    );
  }
}

class SubjectCodeCard extends StatelessWidget {
  const SubjectCodeCard({
    required this.subjectCode,
    super.key,
  });

  final String subjectCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: 24,
      width: 38,
      decoration: BoxDecoration(
        color: const Color(0xff2BB8D6),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        subjectCode,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}

class CustomModalButton extends StatelessWidget {
  final String buttonName;
  final int index;
  final RxInt yearIndexController;

  const CustomModalButton({
    required this.buttonName,
    required this.index,
    required this.yearIndexController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 24),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            fixedSize: const Size.fromHeight(52),
            backgroundColor: yearIndexController.value == index
                ? const Color(0xff2BB8D6)
                : const Color(0xff9A9A9A).withOpacity(0.1),
          ),
          onPressed: () {
            yearIndexController.value = index;
          },
          child: Text(
            buttonName,
            style: TextStyle(
                color: yearIndexController.value == index
                    ? Colors.white
                    : const Color(0xff9A9A9A),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class TermButton extends StatelessWidget {
  final String termName;
  final int index;
  final RxInt indexController;

  const TermButton({
    required this.termName,
    required this.index,
    required this.indexController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextButton(
        style: TextButton.styleFrom(
          fixedSize: const Size(116, 16),
          backgroundColor: indexController.value == index
              ? const Color(0xff2BB8D6)
              : Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {
          indexController.value = index;
        },
        child: Text(
          termName,
          style: TextStyle(
            color: indexController.value == index
                ? Colors.white
                : const Color(0xff30323D),
          ),
        ),
      ),
    );
  }
}

class EcaMarkRow extends StatelessWidget {
  final String ecaName;
  final String ecaGrade;
  final String ecaRemarks;
  final bool? isBold;
  const EcaMarkRow({
    required this.ecaName,
    required this.ecaGrade,
    required this.ecaRemarks,
    this.isBold = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 56,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Text(
                ecaName,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w400),
                // textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                ecaGrade,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                ecaRemarks,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w400),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarkTile extends StatelessWidget {
  final String title;
  final String marks;
  const MarkTile({
    required this.title,
    required this.marks,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 60,
        width: 89,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text(
              marks,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectMarkRow extends StatelessWidget {
  final String subject;
  final String theory;
  final String practical;
  final String gradePoint;
  final String grade;
  final bool? isBold;

  const SubjectMarkRow({
    required this.subject,
    required this.theory,
    required this.practical,
    required this.gradePoint,
    required this.grade,
    this.isBold = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Container(
        height: 48,
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Text(
                subject,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w500),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                theory,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                practical,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                gradePoint,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                grade,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: isBold! ? FontWeight.w600 : FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
