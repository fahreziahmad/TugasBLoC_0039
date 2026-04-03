import 'package:flutter/material.dart';
import 'package:tugas_bloc/mainlayout.dart';
import 'package:tugas_bloc/order.dart';

class HomePage extends StatefulWidget {
  final Map<String, dynamic>? recentOrder;
  const HomePage({super.key, this.recentOrder});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Home",
      showAppBar: true,
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder:
                  (context) => AlertDialog(
                    title: Text("Logout"),
                    content: Text("Are you sure you want to logout?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cencel"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            '/login',
                            (route) => false,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Logout"),
                      ),
                    ],
                  ),
            );
          },
          icon: Icon(Icons.logout_rounded),
          tooltip: 'Logout',
        ),
      ],
       child: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          color: MainLayout.backgroundColor,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello, User!",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: MainLayout.textSubtitleColor,
                              ),
                            ),
                            SizedBox(height: 8),
                            Icon(
                              Icons.waving_hand_rounded,
                              color: MainLayout.accentYellow,
                              size: 24,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "What do you want to order today?",
                          style: TextStyle(
                            fontSize: 14,
                            color: MainLayout.textSubtitleColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: MainLayout.primaryColor.withValues(alpha: 0.1),
                  child: Icon(
                    Icons.person,
                    color: MainLayout.primaryColor,
                    size: 28,
                  ),
                ),
                SizedBox(height: 32),
