import 'package:flutter/material.dart';
import 'package:forumapp/controllers/authentication.dart';
import 'package:forumapp/views/register_page.dart';
import 'package:forumapp/views/widgets/input_widget.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthenticationController _authenticationController =
      Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Login Page',
              // style: GoogleFonts.poppins(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            InputWidget(
              hintText: 'Username',
              controller: _usernameController,
              obscureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            InputWidget(
              hintText: 'Password',
              controller: _passwordController,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
              ),
              onPressed: () async {
                await _authenticationController.login(
                    username: _usernameController.text.trim(),
                    password: _passwordController.text.trim());
              },
              child: Obx(() {
                return _authenticationController.isLoading.value
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Login');
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const RegisterPage());
                // Navigator.pop(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const RegisterPage(),
                //   ),
                // );
              },
              child: const Text(
                'Register',
              ),
            )
          ],
        ),
      ),
    ));
  }
}
