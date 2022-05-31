// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, annotate_overrides, avoid_print, sized_box_for_whitespace, prefer_final_fields, unnecessary_this

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/login/login_screen.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../shared/shared_components.dart';
import 'profile_components.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  TextEditingController _eventController = TextEditingController();
  @override
  void initState() {
    selectedEvents = {};

    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    final user = FirebaseAuth.instance.currentUser!;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              profileAndCover(),
              SizedBox(
                height: 80.h,
              ),
              userName(username: "${user.email!}"),
              SizedBox(height: 10.h),
              defaultButton(
                function: () async {
                  await FirebaseAuth.instance.signOut();
                  navigateAndFinish(context, LoginScreen());
                },
                height: 50.h,
                width: 100.w,
                text: "Sign Out >",
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsWidget(
                    value: '162',
                    text: 'Height',
                    iconData: Icons.height,
                    context: context,
                  ),
                  detailsWidget(
                    value: '60',
                    text: 'Weight',
                    iconData: Icons.monitor_weight,
                    context: context,
                  ),
                  detailsWidget(
                    value: '21',
                    text: 'age',
                    iconData: Icons.cake,
                    context: context,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              getPremium(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: MyColors.kSpecialLightGreyColor,
                          borderRadius: BorderRadius.circular(25.0)),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Color(0xFF1F506E),
                            borderRadius: BorderRadius.circular(25.0)),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'Week',
                          ),
                          Tab(
                            text: 'Month',
                          ),
                          Tab(
                            text: 'Year',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 400,
                      // width: double.maxFinite,
                      child: TabBarView(
                        children: [
                          Column(
                            children: [
                              TableCalendar(
                                focusedDay: selectedDay,
                                firstDay: DateTime(1990),
                                lastDay: DateTime(2050),
                                calendarFormat: format,
                                onFormatChanged: (CalendarFormat _format) {
                                  setState(() {
                                    format = _format;
                                  });
                                },
                                startingDayOfWeek: StartingDayOfWeek.sunday,
                                daysOfWeekVisible: true,

                                //Day Changed
                                onDaySelected:
                                    (DateTime selectDay, DateTime focusDay) {
                                  setState(() {
                                    selectedDay = selectDay;
                                    focusedDay = focusDay;
                                  });
                                  print(focusedDay);
                                },
                                selectedDayPredicate: (DateTime date) {
                                  return isSameDay(selectedDay, date);
                                },

                                eventLoader: _getEventsfromDay,

                                //To style the Calendar
                                calendarStyle: CalendarStyle(
                                  isTodayHighlighted: true,
                                  selectedDecoration: BoxDecoration(
                                    color: MyColors.kExtraLightMainColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  selectedTextStyle:
                                      TextStyle(color: Colors.white),
                                  todayDecoration: BoxDecoration(
                                    color: MyColors.kMainLightColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  defaultDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  weekendDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                headerStyle: HeaderStyle(
                                  formatButtonVisible: true,
                                  titleCentered: true,
                                  formatButtonShowsNext: false,
                                  formatButtonDecoration: BoxDecoration(
                                    color: MyColors.kSpecialMainColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  formatButtonTextStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ..._getEventsfromDay(selectedDay).map(
                            (Event event) => ListTile(
                              title: Text(
                                event.title,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              TableCalendar(
                                focusedDay: selectedDay,
                                firstDay: DateTime(1990),
                                lastDay: DateTime(2050),
                                calendarFormat: format,
                                onFormatChanged: (CalendarFormat _format) {
                                  setState(() {
                                    format = _format;
                                  });
                                },
                                startingDayOfWeek: StartingDayOfWeek.sunday,
                                daysOfWeekVisible: true,

                                //Day Changed
                                onDaySelected:
                                    (DateTime selectDay, DateTime focusDay) {
                                  setState(() {
                                    selectedDay = selectDay;
                                    focusedDay = focusDay;
                                  });
                                  print(focusedDay);
                                },
                                selectedDayPredicate: (DateTime date) {
                                  return isSameDay(selectedDay, date);
                                },

                                eventLoader: _getEventsfromDay,

                                //To style the Calendar
                                calendarStyle: CalendarStyle(
                                  isTodayHighlighted: true,
                                  selectedDecoration: BoxDecoration(
                                    color: MyColors.kExtraLightMainColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  selectedTextStyle:
                                      TextStyle(color: Colors.white),
                                  todayDecoration: BoxDecoration(
                                    color: MyColors.kMainLightColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  defaultDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  weekendDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                headerStyle: HeaderStyle(
                                  formatButtonVisible: true,
                                  titleCentered: true,
                                  formatButtonShowsNext: false,
                                  formatButtonDecoration: BoxDecoration(
                                    color: MyColors.kSpecialMainColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  formatButtonTextStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ..._getEventsfromDay(selectedDay).map(
                            (Event event) => ListTile(
                              title: Text(
                                event.title,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              TableCalendar(
                                focusedDay: selectedDay,
                                firstDay: DateTime(1990),
                                lastDay: DateTime(2050),
                                calendarFormat: format,
                                onFormatChanged: (CalendarFormat _format) {
                                  setState(() {
                                    format = _format;
                                  });
                                },
                                startingDayOfWeek: StartingDayOfWeek.sunday,
                                daysOfWeekVisible: true,

                                //Day Changed
                                onDaySelected:
                                    (DateTime selectDay, DateTime focusDay) {
                                  setState(() {
                                    selectedDay = selectDay;
                                    focusedDay = focusDay;
                                  });
                                  print(focusedDay);
                                },
                                selectedDayPredicate: (DateTime date) {
                                  return isSameDay(selectedDay, date);
                                },

                                eventLoader: _getEventsfromDay,

                                //To style the Calendar
                                calendarStyle: CalendarStyle(
                                  isTodayHighlighted: true,
                                  selectedDecoration: BoxDecoration(
                                    color: MyColors.kExtraLightMainColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  selectedTextStyle:
                                      TextStyle(color: Colors.white),
                                  todayDecoration: BoxDecoration(
                                    color: MyColors.kMainLightColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  defaultDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  weekendDecoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                headerStyle: HeaderStyle(
                                  formatButtonVisible: true,
                                  titleCentered: true,
                                  formatButtonShowsNext: false,
                                  formatButtonDecoration: BoxDecoration(
                                    color: MyColors.kSpecialMainColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  formatButtonTextStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ..._getEventsfromDay(selectedDay).map(
                            (Event event) => ListTile(
                              title: Text(
                                event.title,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () => showDialog(
        //     context: context,
        //     builder: (context) => AlertDialog(
        //       title: Text("Add Event"),
        //       content: TextFormField(
        //         controller: _eventController,
        //       ),
        //       actions: [
        //         TextButton(
        //           child: Text("Cancel"),
        //           onPressed: () => Navigator.pop(context),
        //         ),
        //         TextButton(
        //           child: Text("Ok"),
        //           onPressed: () {
        //             if (_eventController.text.isEmpty) {
        //             } else {
        //               if (selectedEvents[selectedDay] != null) {
        //                 selectedEvents[selectedDay]!.add(
        //                   Event(title: _eventController.text),
        //                 );
        //               } else {
        //                 selectedEvents[selectedDay] = [
        //                   Event(title: _eventController.text)
        //                 ];
        //               }
        //             }
        //             Navigator.pop(context);
        //             _eventController.clear();
        //             setState(() {});
        //             return;
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        //   label: Text("Add Event"),
        //   icon: Icon(Icons.add),
        // ),
      ),
    );
  }
}

class Event {
  final String title;
  Event({required this.title});

  String toString() => this.title;
}
