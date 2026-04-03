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
                 Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MainLayout.primaryColor,
                        MainLayout.primaryColor.withValues(alpha: 0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: MainLayout.primaryColor.withValues(alpha: 0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: MainLayout.accentYellow,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'PROMO 50%',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                       Text(
                        "Special Discount\nFor Your First Order!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: MainLayout.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                        ),
                        child: Text(
                          'Claim Now',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),

                Text(
                  'Top Menu',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MainLayout.textTitleColor,
                  ),
                ),
                SizedBox(height: 16),
