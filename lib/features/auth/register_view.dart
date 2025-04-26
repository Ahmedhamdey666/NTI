// ignore_for_file: must_be_immutable, avoid_print, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/inputs/Default.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    final username = usernameController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (username.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      _showError('من فضلك املأ كل الحقول');
    } else if (password != confirmPassword) {
      _showError('كلمة المرور وتأكيدها غير متطابقين');
    } else {
      // هنا تقدر تبعت البيانات للسيرفر أو تعمل أي منطق تسجيل دخول
      print('Username: $username');
      print('Password: $password');
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            children: [
              DefaulTextFormField2(
                H: 'Username',
                secure: false,
                controller: usernameController,
              ),
              const SizedBox(height: 15),
              DefaulTextFormField2(
                H: 'Password',
                secure: true,
                controller: passwordController,
              ),
              const SizedBox(height: 15),
              DefaulTextFormField2(
                H: 'Confirm Password',
                secure: true,
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 30),
              Button(
                text: 'Register',
                onPressed: _submitForm,
              ),
            ],
          ),
        ),
      ),
    );
  }
}