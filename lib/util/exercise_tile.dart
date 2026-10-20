import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;

  const ExerciseTile({Key ? key,
  required this.icon,
  required this.exerciseName,
  required this.numberOfExercise,
  required this.color

  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Row(
                                    children: [
                                        ClipRRect(
                                          borderRadius: BorderRadiusGeometry.circular(12),
                                          child: Container(
                                            padding: EdgeInsets.all(16),
                                            color: color,
                                            child: Icon(
                                              icon,
                                              color: Colors.white
                                            ),
                                          ),
                                        ),
                                    SizedBox(width: 12),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //title
                                        Text(exerciseName,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          )
                                        ),
                                        SizedBox(height: 5),
                                        //subtitle
                                        Text(numberOfExercise.toString() + ' Exercises',
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 14
                                          )
                                        )
                                      ],
                                    ),
                                    ],
                                   ),
                                  Icon(Icons.more_horiz)
                                ]
                              ),
                            ),
                          ),
    );
  }
}