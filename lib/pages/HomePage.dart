import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/util/emoticon_face.dart';
import 'package:learningdart/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
        body: SafeArea(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      //greetins row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Hi Farouk
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Farouk!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 7),
                              Text(
                                '23 jan, 2026',
                                style: TextStyle(
                                  color: Colors.blue[200],
                                ),
                              ),
                            ],
                          ),
                          //Notification
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(12),
                            child:  Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 20
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      // search bar
                      Container(
                        decoration:BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [ 
                            Icon(Icons.search,
                            color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                          
                      SizedBox(height: 25),
                          
                      //How do you feel
                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                          
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //bad
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😞',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Bad',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        
                          //fine
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😐',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Fine',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                          //well
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😊',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Well',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                                
                          //excellent
                          Column(
                            children: [
                              EmoticonFace(
                                emoticonFace: '😁',
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Excellent',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ),          
              SizedBox(height: 25), 
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(height: 10),
                        // list view of exercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercise: 16,
                                color: Colors.orange
                              ),
                              ExerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Skills',
                                numberOfExercise: 8,
                                color: Colors.blue
                              ),
                              ExerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writing Skills',
                                numberOfExercise: 6,
                                color:  Colors.pink
                              ),
                              ExerciseTile(
                                icon: Icons.book,
                                exerciseName: 'Problem Solving Skills',
                                numberOfExercise: 10,
                                color:  Colors.green
                              ),
                              ExerciseTile(
                                icon: Icons.message,
                                exerciseName: 'Speaking Skills',
                                numberOfExercise: 4,
                                color:  Colors.yellow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
      )  
    );
  }
}