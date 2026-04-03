import 'package:flutter/material.dart';
import 'package:tugas_bloc/login.dart';
import 'package:tugas_bloc/mainlayout.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
   @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'login',
      showAppBar: false,
      child: Container(
        color: MainLayout.backgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.0,
                vertical: 24.0,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/images/login.jpg',
                      height: 180,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: MainLayout.primaryColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported_outlined,
                              size: 80,
                              color: MainLayout.primaryColor,
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 32),

                    Text(
                      "Create Account",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: MainLayout.textTitleColor,
                        letterSpacing: -0.5,
                      ),
                    ),
                    SizedBox(height: 8),

                    Text(
                      "Sign up to get started",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        color: MainLayout.textSubtitleColor,
                      ),
                    ),
                    SizedBox(height: 48),

                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(color: MainLayout.labelColor),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: MainLayout.primaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: MainLayout.inputBorderColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: MainLayout.primaryColor,
                            width: 2,
                          ),
                        ),
                        filled: true,
                        fillColor: MainLayout.inputFillColor,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),