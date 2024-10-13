import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_inventory/utlis/routes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUp() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill out all required fields.',
        backgroundColor: const Color(0x7EBB2124),
        colorText: Colors.white,
        margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
      );
      return;
    }

    emailController.clear();
    passwordController.clear();
    Get.snackbar(
      'Success',
      'Your account has been created successfully.',
      backgroundColor: const Color(0x7E22BB33),
      colorText: Colors.white,
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
    );
    onTapLogin();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 1.5 / 4,
              height: screenHeight * 0.85,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Color(0xFFFFFFFF),
                    width: 1.0,
                  ),
                ),
              ),
              child: Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('assets/Images/Login_logo.png',
                        width: 400, height: 400)),
              ),
            ),
            SizedBox(
              width: screenWidth * 2.5 / 4,
              height: screenHeight,
              child: Center(
                child: Container(
                  width: screenWidth * 1.75 / 4,
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 68,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFCD535),
                        ),
                      ),
                      const SizedBox(height: 50),
                      TextFormField(
                        controller: emailController,
                        cursorColor: const Color(0xFFFFFFFF),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xBEFFFFFF),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xBEFFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCD535)),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: passwordController,
                        cursorColor: const Color(0xFFFFFFFF),
                        style: const TextStyle(
                          color: Color(0xFFFFFFFF),
                        ),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xBEFFFFFF),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xBEFFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFCD535)),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              overlayColor: Colors.transparent,
                            ),
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFFFCD535),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: signUp,
                          style: ButtonStyle(
                            padding: WidgetStateProperty.all(
                              const EdgeInsets.only(top: 12, bottom: 15),
                            ),
                            backgroundColor:
                                WidgetStateProperty.resolveWith<Color?>(
                              (states) {
                                if (states.contains(WidgetState.hovered)) {
                                  return const Color(0xFFFCD535);
                                }
                                return const Color(0xFFFFFFFF);
                              },
                            ),
                            foregroundColor:
                                WidgetStateProperty.resolveWith<Color?>(
                              (states) {
                                if (states.contains(WidgetState.hovered)) {
                                  return const Color(0xFF181A20);
                                }
                                return const Color(0xFFFFFFFF);
                              },
                            ),
                            side: WidgetStateProperty.resolveWith<BorderSide?>(
                              (states) {
                                return const BorderSide(
                                  color: Color(0x7EFFFFFF),
                                  width: 1.0,
                                );
                              },
                            ),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF181A20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
