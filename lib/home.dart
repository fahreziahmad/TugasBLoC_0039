import 'package:flutter/material.dart';
import 'package:tugas_bloc/mainlayout.dart';
import 'package:tugas_bloc/order.dart';

class HomePage extends StatefulWidget {
  final Map<String, dynamic>? recentOrder;
  const HomePage({super.key, this.recentOrder});

  @override
  State<HomePage> createState() => _HomePageState();
}