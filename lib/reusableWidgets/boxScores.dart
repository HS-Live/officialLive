import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class boxScore extends StatelessWidget {
  final String team1;
  final IconData icon;
  final String team2;
  final String score1;
  final String score2;
  final String standing1;
  final String standing2;

  const boxScore({
    Key? key,
    required this.team1,
    required this.team2,
    required this.icon,
    required this.score1,
    required this.score2,
    required this.standing1,
    required this.standing2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Color.fromARGB(179, 85, 109, 138),
        color: Color.fromARGB(255, 24, 55, 9),

        borderRadius: BorderRadius.circular(10),
      ),
      height: 90,
      width: 175,
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 10),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Final',
                    style: GoogleFonts.kanit(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    standing1,
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        team1,
                        style: GoogleFonts.bebasNeue(
                            fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   width: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      score1,
                      style: GoogleFonts.bebasNeue(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    standing2,
                    style: GoogleFonts.robotoCondensed(
                        color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    icon,
                    size: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        team2,
                        style: GoogleFonts.bebasNeue(
                            fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    score2,
                    style: GoogleFonts.bebasNeue(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
