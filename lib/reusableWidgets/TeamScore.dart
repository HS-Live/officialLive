import 'package:flutter/material.dart';

class TeamScore {
  final String teamName;
  int score;

  TeamScore(this.teamName, this.score);
}

class SportsScoringApp extends StatefulWidget {
  @override
  _SportsScoringAppState createState() => _SportsScoringAppState();
}

class _SportsScoringAppState extends State<SportsScoringApp> {
  List<TeamScore> teamScores = [];

  void addNewGame() {
    setState(() {
      // Replace 'Team A' and 'Team B' with actual team names as needed
      teamScores.add(TeamScore('Team A', 0));
      teamScores.add(TeamScore('Team B', 0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sports Scoring App')),
      body: Column(
        children: [
          // Button to add a new game
          TextButton(
            onPressed: addNewGame,
            child: Text('Add New Game'),
          ),
          // List of team scores
          Expanded(
            child: ListView.builder(
              itemCount: teamScores.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(teamScores[index].teamName),
                      Text(teamScores[index].score.toString()),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SportsScoringApp(),
  ));
}
