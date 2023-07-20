import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hslive/SoccerPage.dart';
import 'package:hslive/reusableWidgets/TeamScore.dart';
import 'package:hslive/reusableWidgets/boxScores.dart';
import 'package:hslive/reusableWidgets/calendar.dart';
import 'package:hslive/reusableWidgets/newbox.dart';

import 'package:hslive/reusableWidgets/sportsBox.dart';
import 'package:hslive/standingsPage.dart';

void main() => runApp(const navPage());

// ignore: camel_case_types
class navPage extends StatefulWidget {
  const navPage({super.key});

  @override
  State<navPage> createState() => _navPageState();
}

class _navPageState extends State<navPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  int boxCount = 0;

  void incrementBoxCount() {
    setState(() {
      boxCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(
              Icons.home_outlined,
              size: 27,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_basketball_outlined),
            selectedIcon: Icon(Icons.sports_basketball),
            label: 'Sports',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.logout),
            icon: Icon(Icons.logout_outlined),
            label: 'Log Out',
          ),
        ],
      ),
      body: [
        Container(
          color: Color.fromARGB(255, 20, 20, 20),
          padding: const EdgeInsets.only(top: 15, left: 9, right: 9),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CalendarPage()),
                  );
                },
                child: const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Text(
                'Mission Sports',
                style: GoogleFonts.kanit(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  // color: Color.fromARGB(179, 0, 50, 120),
                  // color: Color.fromARGB(255, 12, 36, 0),

                  color: Colors.white,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: incrementBoxCount,
                child: Icon(
                  Icons.add_box,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ]),
            const SizedBox(
              height: 5,
              // width: 8,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  width: 357,
                  height: 1,
                )
              ],
            ),
            const SizedBox(
              height: 10,
              // width: 8,
            ),
            Row(
              children: [
                const Icon(
                  Icons.logo_dev,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                  // width: 8,
                ),
                Text('High School Sports',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,

                      color: Colors.white,

                      // color: Colors.white54,
                    )),
                const SizedBox(
                  width: 80,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              StandingsPage()), // Replace StandingsPage with the desired page you want to navigate to
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 47, 47),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 100,
                    height: 30,
                    child: Center(
                      child: Text(
                        'STANDINGS',
                        style: GoogleFonts.robotoCondensed(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
              // width: 8,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 54, 54, 54),
                  ),
                  width: 357,
                  height: 1,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                // team score
              ],
            )
          ]),
        ),
        Container(
          color: Color.fromARGB(255, 20, 20, 20),
          padding: const EdgeInsets.only(top: 15, left: 9, right: 9),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.calendar_month,
                  // color: Color.fromARGB(179, 0, 50, 120),
                  // color: Color.fromARGB(255, 12, 36, 0),
                  color: Colors.white,
                ),
                Text(
                  'Mission Sports',
                  style: GoogleFonts.kanit(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    // color: Color.fromARGB(179, 0, 50, 120),
                    // color: Color.fromARGB(255, 12, 36, 0),

                    color: Colors.white,
                  ),
                ),
                const Icon(
                  Icons.settings,
                  // color: Color.fromARGB(179, 0, 50, 120),
                  color: Colors.white,
                  // color: Color.fromARGB(255, 12, 36, 0),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  // Container(
                  //   margin: const EdgeInsets.symmetric(vertical: 20.0),
                  //   height: 80.0,
                  // child: Expanded(
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: <Widget>[
                  //     Container(
                  //         decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 13, 35, 2),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         width: 80,
                  //         child: const Center(
                  //           child: Icon(
                  //             Icons.pool,
                  //             size: 40,
                  //             color: Colors.white,
                  //           ),
                  //         )),
                  //     const SizedBox(
                  //       width: 5,
                  //     ),
                  //     Container(
                  //         decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 13, 35, 2),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         width: 80,
                  //         child: Center(
                  //           child: Icon(
                  //             Icons.sports_volleyball,
                  //             size: 40,
                  //             color: Colors.white,
                  //           ),
                  //         )),
                  //     const SizedBox(
                  //       width: 5,
                  //     ),
                  //     Container(
                  //         decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 13, 35, 2),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         width: 80,
                  //         child: Center(
                  //           child: Icon(
                  //             Icons.sports_football,
                  //             size: 40,
                  //             color: Colors.white,
                  //           ),
                  //         )),
                  //     const SizedBox(
                  //       width: 5,
                  //     ),
                  //     Container(
                  //         decoration: BoxDecoration(
                  //           color: Color.fromARGB(255, 13, 35, 2),
                  //           borderRadius: BorderRadius.circular(15),
                  //         ),
                  //         width: 80,
                  //         child: Center(
                  //           child: Icon(
                  //             Icons.hiking,
                  //             size: 40,
                  //             color: Colors.white,
                  //           ),
                  //         )),
                  //   ],
                  // ),

                  // ),
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 80,
                        height: 80,
                        child: const Center(
                          child: Icon(
                            Icons.sports_basketball,
                            size: 40,
                            color: Color.fromARGB(255, 59, 65, 56),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Icon(
                            Icons.sports_volleyball,
                            size: 40,
                            color: Color.fromARGB(255, 59, 65, 56),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 80,
                        height: 80,
                        child: Center(
                          child: Icon(
                            Icons.sports_football,
                            size: 40,
                            color: Color.fromARGB(255, 59, 65, 56),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Add your navigation logic here
                          // For example, you can use the Navigator to push a new page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyGame(
                                  gameNumber: 1,
                                  homeTeam: "Thing",
                                  awayTeam: "tHING",
                                  homeTeamGoals: [
                                    2
                                  ],
                                  awayTeamGoals: [
                                    2
                                  ]), // Replace SoccerPage with your desired page widget
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 80,
                          height: 80,
                          child: Center(
                            child: Icon(
                              Icons.sports_soccer,
                              size: 40,
                              color: Color.fromARGB(255, 59, 65, 56),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(70, 59, 65, 56),
                  borderRadius: BorderRadius.circular(15)),
              height: 200,
              width: 350,
              child: Column(children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(70, 252, 255, 250),
                              borderRadius: BorderRadius.circular(8)),
                          width: 56,
                          height: 18,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Icon(
                                    Icons.adjust,
                                    color: Color.fromARGB(255, 4, 44, 5),
                                    size: 15,
                                    weight: 700,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text('LIVE',
                                      style: GoogleFonts.robotoCondensed(
                                          color: Color.fromARGB(255, 4, 48, 5),
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          )),
                    )
                    // Container
                  ],
                )
              ]),
            ),
            const SizedBox(height: 25),
            Image.asset(
              'assets/imageHSLive2.png',
              height: 150,
              alignment: Alignment.topCenter,
            ),
          ]),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}
