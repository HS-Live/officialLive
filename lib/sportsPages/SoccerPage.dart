//import 'package:flutter/material.dart';

/*class MyGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200, 
        color: Color(0xff0e0e0e),
        ),
    );
  }
}
class MyGame extends StatelessWidget {
  final int gameNumber;
  final String homeTeam;
  final String awayTeam;
  final List<int> homeTeamGoals;
  final List<int> awayTeamGoals;

  MyGame({
    required this.gameNumber,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeTeamGoals,
    required this.awayTeamGoals,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameDetailsPage(game: this)),
        );
      },
      child: Container(
        height: 200,
        color: Color(0xff0e0e0e),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Game ${gameNumber.toString()}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle home team button click
                        // Navigate or display team stats
                      },
                      child: Text(
                        homeTeam,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ...homeTeamGoals.map(
                      (goal) => Text(
                        goal.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle away team button click
                        // Navigate or display team stats
                      },
                      child: Text(
                        awayTeam,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ...awayTeamGoals.map(
                      (goal) => Text(
                        goal.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class GameDetailsPage extends StatelessWidget {
  final MyGame game;

  GameDetailsPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Game Number: ${game.gameNumber}'),
            SizedBox(height: 16),
            Text('Home Team: ${game.homeTeam}'),
            SizedBox(height: 16),
            Text('Away Team: ${game.awayTeam}'),
            SizedBox(height: 16),
            Text('Home Team Goals: ${game.homeTeamGoals.join(", ")}'),
            SizedBox(height: 16),
            Text('Away Team Goals: ${game.awayTeamGoals.join(", ")}'),
            // Add more details such as fouls, player names, etc.
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hslive/centralPage.dart';

class MyGame extends StatefulWidget {
  final int gameNumber;
  final String homeTeam;
  final String awayTeam;
  final List<int> homeTeamGoals;
  final List<int> awayTeamGoals;

  MyGame({
    required this.gameNumber,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeTeamGoals,
    required this.awayTeamGoals,
  });

  @override
  _MyGameState createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  late Timer _timer;
  int _secondsPassed = 0;

  @override
  void initState() {
    super.initState();
    // Start the timer when the game starts
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _secondsPassed++;
      });
    });
  }

  String getFormattedTime() {
    // Format the time as desired (e.g., MM:SS)
    int minutes = _secondsPassed ~/ 60;
    int seconds = _secondsPassed % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => navPage()),
        );
      },
      child: Container(
        height: 200,
        color: Color(0xff0e0e0e),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Game ${widget.gameNumber.toString()}',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle home team button click
                        // Navigate or display team stats
                      },
                      child: Text(
                        widget.homeTeam,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ...widget.homeTeamGoals.map(
                      (goal) => Text(
                        goal.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle away team button click
                        // Navigate or display team stats
                      },
                      child: Text(
                        widget.awayTeam,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    ...widget.awayTeamGoals.map(
                      (goal) => Text(
                        goal.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Time: ${getFormattedTime()}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameDetailsPage extends StatelessWidget {
  final MyGame game;

  GameDetailsPage({required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Game Number: ${game.gameNumber}'),
            SizedBox(height: 16),
            Text('Home Team: ${game.homeTeam}'),
            SizedBox(height: 16),
            Text('Away Team: ${game.awayTeam}'),
            SizedBox(height: 16),
            Text('Home Team Goals: ${game.homeTeamGoals.join(", ")}'),
            SizedBox(height: 16),
            Text('Away Team Goals: ${game.awayTeamGoals.join(", ")}'),
            // Add more details such as fouls, player names, etc.
          ],
        ),
      ),
    );
  }
}
