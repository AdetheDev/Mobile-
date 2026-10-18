import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
                SizedBox(height: 40),
                headerWidget(),
                SizedBox(height: 40),
                Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.4)),
                settingsItemWidget(
                  icon: CupertinoIcons.person_alt_circle,
                  title: "User Profile",
                ),
                settingsItemWidget(
                  icon: Icons.lock_outline,
                  title: "Change Password",
                ),
                settingsItemWidget(
                  icon: CupertinoIcons.question_circle,
                  title: "FAQs",
                ),
                settingsItemWidget(
                  icon: Icons.notifications_active_outlined,
                  title: "Push Notification",
                  isSwitch: true,
                ),

                SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF5F6),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),

                  child: Column(
                    children: [
                      Text(
                        "If you have any other query you\ncan reach out to us",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "WhatsApp US",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Colors.indigo,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget settingsItemWidget({
    required IconData icon,
    required String title,
    bool? isSwitch = false,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          child: Row(
            spacing: 15,
            children: [
              Icon(icon, color: Colors.grey, size: 30),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              isSwitch!
                  ? Switch(
                      value: true,
                      onChanged: (value) {},
                      activeTrackColor: Colors.green,
                    )
                  : Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
        Divider(height: 10, thickness: 0.8, color: Colors.grey.withOpacity(0.4)),
      ],
    );
  }

  Row headerWidget() {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue,
          child: Text("A", style: TextStyle(fontSize: 25, color: Colors.white)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "Mr. John Doe",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
      ],
    );
  }
}