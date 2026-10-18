import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}



class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 140,vertical: 50),
                                     color: Color(0xFFC9C4FE),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: const Color.fromARGB(255, 243, 241, 241).withOpacity(0.9),
                        child: CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage('assets/images/Chrome Alienware Green Eyes.png'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Rita Smith",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Phone",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5))
                      ),
                      Text(
                        "+5999-771-7171",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mail",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5))
                      ),
                      Text(
                        "rita@gmail.com",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.1)),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.dark_mode_outlined, size: 25),
                      SizedBox(width: 10),
                      Text(
                        "Dark Mode",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                       
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.1)),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.person_outline, size: 25),
                      SizedBox(width: 10),
                      Text(
                        "Profile details",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.1)),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.tune, size: 25),
                      SizedBox(width: 10),
                      Text(
                        "Settings",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.1)),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.logout, size: 25),
                      SizedBox(width: 10),
                      Text(
                        "Log Out",
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.1)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}