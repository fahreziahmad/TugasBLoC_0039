import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  static const Color primaryColor = Color(0xFF4D51ED);
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color accentYellow = Color(0xFFFFC107);
  static const Color accentOrange = Color(0xFFFF7043);

  static const Color textTitleColor = Color(0xFF2D2D2D);
  static const Color textSubtitleColor = Color(0xFF666666);
  static const Color inputFillColor = Color(0xFFF8F9FA);
  static const Color inputBorderColor = Color(0xFFE0E0E0);
  static const Color labelColor = Color(0xFF4A4A44);

  final Widget child;
  final String title;
  final bool showAppBar;
  final List<Widget>? actions;

  const MainLayout({
    super.key,
    required this.child,
    this.title = '',
    this.showAppBar = true,
    this.actions,
  });
