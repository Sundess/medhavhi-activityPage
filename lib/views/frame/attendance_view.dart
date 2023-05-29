import 'package:flutter/material.dart';
import 'package:activity_page/controller/activity_controllers.dart';
import 'package:activity_page/views/components.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:activity_page/util/project_colors.dart';

class AttendenceView extends StatelessWidget {
  const AttendenceView({
    super.key,
    this.scrollController,
    required this.attendanceController,
  });

  final ScrollController? scrollController;
  final AttendanceController attendanceController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8, right: 16),
      child: Stack(
        children: [
          ListView(
            // controller: scrollController,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  StatusTile(
                    bigName: '182 Days',
                    smallName: 'Present',
                    textColor: Colors.green,
                  ),
                  Spacer(),
                  StatusTile(
                    bigName: '28 Days',
                    smallName: 'Absent',
                    textColor: Color(0xffFECA55),
                  ),
                  Spacer(),
                  StatusTile(
                    bigName: '75',
                    smallName: 'Holidays',
                    textColor: Color(0xffE63946),
                  ),
                  Spacer(),
                  StatusTile(
                    bigName: '90%',
                    smallName: 'Attendence',
                    textColor: Color(0xff2BB8D6),
                  ),
                ],
              ),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                daysOfWeekHeight: 56,
                daysOfWeekStyle: const DaysOfWeekStyle(
                  weekdayStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  weekendStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                calendarStyle: CalendarStyle(
                  weekendDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffE63946),
                  ),
                  weekendTextStyle: const TextStyle(color: Colors.white),
                  holidayDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffE63946),
                  ),
                  holidayTextStyle: const TextStyle(color: Colors.white),
                  todayDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff2BB8D6),
                  ),
                  cellMargin:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                ),
                headerStyle: const HeaderStyle(
                  leftChevronIcon:
                      Icon(Icons.chevron_left, color: Color(0xff9A9A9A)),
                  rightChevronIcon:
                      Icon(Icons.chevron_right, color: Color(0xff9A9A9A)),
                  titleTextStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xff30323D),
                    fontWeight: FontWeight.w500,
                  ),
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                weekendDays: const [DateTime.saturday],
                holidayPredicate: (day) {
                  for (var d in attendanceController.holidayDates) {
                    if (day.year == d.year &&
                        day.month == d.month &&
                        day.day == d.day) {
                      return true;
                    }
                  }
                  return false;
                },
                calendarBuilders: CalendarBuilders(
                  defaultBuilder: (context, day, focusedDay) {
                    for (var d in attendanceController.presentDates) {
                      if (day.year == d.year &&
                          day.month == d.month &&
                          day.day == d.day) {
                        return DateTile(
                          dateNum: day.day.toString(),
                          backgroundColor: const Color(0xff37B76C),
                        );
                      }
                    }
                    for (var d in attendanceController.absentDates) {
                      if (day.year == d.year &&
                          day.month == d.month &&
                          day.day == d.day) {
                        return DateTile(
                          dateNum: day.day.toString(),
                          backgroundColor: const Color(0xffFECA55),
                        );
                      }
                    }
                    return null;
                  },
                ),
              ),
              // SfCalendar(
              //   view: CalendarView.month,
              //   cellBorderColor: Colors.transparent,
              //   headerHeight: 64,
              //   headerStyle: const CalendarHeaderStyle(
              //     textStyle: TextStyle(
              //       fontSize: 14,
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              //   viewHeaderStyle: const ViewHeaderStyle(
              //     dayTextStyle: TextStyle(
              //         fontSize: 14,
              //         fontWeight: FontWeight.w600,
              //         color: Colors.black),
              //   ),
              //   showNavigationArrow: true,
              //   monthCellBuilder: (context, details) {
              //     for (var d in attendanceController.presentDates) {
              //       if (details.date == d) {
              //         return DateTile(
              //           dateNum: details.date.day.toString(),
              //           backgroundColor: const Color(0xff37B76C),
              //         );
              //       }
              //     }
              //     for (var d in attendanceController.absentDates) {
              //       if (details.date == d) {
              //         return DateTile(
              //           dateNum: details.date.day.toString(),
              //           backgroundColor: const Color(0xffFECA55),
              //         );
              //       }
              //     }
              //     for (var d in attendanceController.holidayDate) {
              //       if (details.date == d) {
              //         return DateTile(
              //           dateNum: details.date.day.toString(),
              //           backgroundColor: const Color(0xffE63946),
              //         );
              //       }
              //     }
              //     return DateTile(
              //       dateNum: details.date.day.toString(),
              //       backgroundColor: Colors.white,
              //     );
              //   },
              //   monthViewSettings: MonthViewSettings(
              //     numberOfWeeksInView: 6,
              //     showTrailingAndLeadingDates: false,
              //     monthCellStyle: MonthCellStyle(
              //       todayBackgroundColor: Colors.red,
              //       trailingDatesTextStyle: TextStyle(
              //         fontSize: 24,
              //         color: Colors.grey.withOpacity(0.2),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 12),
              const Text(
                'Upcoming Holidays',
                style: TextStyle(
                  color: Color(0xff30323D),
                ),
              ),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
              const HolidayCard(),
            ],
          ),
          Positioned(
            bottom: 24,
            right: 16,
            child: FloatingActionButton.extended(
              backgroundColor: ProjectColors.pacificBlue,
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('Application'),
            ),
          ),
        ],
      ),
    );
  }
}
