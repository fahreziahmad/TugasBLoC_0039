import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_bloc/detail_order.dart';
import 'package:tugas_bloc/mainlayout.dart';
import 'package:tugas_bloc/order_bloc.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final TextEditingController makananController = TextEditingController();
  final TextEditingController minumanController = TextEditingController();
  final TextEditingController jumlahMakananController = TextEditingController();
  final TextEditingController jumlahMinumanController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    makananController.dispose();
    minumanController.dispose();
    jumlahMakananController.dispose();
    jumlahMinumanController.dispose();
    super.dispose();
  }

   Widget _buildInputDecoration({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    required String errorMessage,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: MainLayout.labelColor),
        prefixIcon: Icon(icon, color: MainLayout.primaryColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: MainLayout.inputBorderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: MainLayout.primaryColor, width: 2),
        ),
        filled: true,
        fillColor: MainLayout.inputFillColor,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Order Menu',
      showAppBar: true,
      child: Container(
        color: MainLayout.backgroundColor,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "What would you like to have?",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: MainLayout.textTitleColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Fill in the details below to complete your order.",
                    style: TextStyle(
                      fontSize: 14,
                      color: MainLayout.textSubtitleColor,
                    ),
                  ),
                  SizedBox(height: 32),

                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.05),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.fastfood_rounded,
                              color: MainLayout.accentOrange,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Food Details",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: MainLayout.textTitleColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),

                        _buildInputDecoration(
                          controller: makananController,
                          label: "Food Name",
                          icon: Icons.lunch_dining_rounded,
                          errorMessage: "Please enter your food order",
                        ),
                        SizedBox(height: 16),

                        _buildInputDecoration(
                          controller: jumlahMakananController,
                          label: "Quantity (Food)",
                          icon: Icons.format_list_numbered_rounded,
                          errorMessage: "Please enter your food quantity",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

