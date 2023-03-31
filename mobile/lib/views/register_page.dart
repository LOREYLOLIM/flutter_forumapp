import 'package:flutter/material.dart';
import 'package:forumapp/views/login_page.dart';
import 'package:forumapp/views/widgets/input_widget.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              'Register Page',
              // style: GoogleFonts.poppins(fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            InputWidget(
              hintText: 'Name',
              controller: _nameController,
              obscureText: false,
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
              height: 30,
            ),
            InputWidget(
              hintText: 'Email',
              controller: _emailController,
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
              onPressed: () {},
              child: const Text('Register'),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const LoginPage());
                // Navigator.pop(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const RegisterPage(),
                //   ),
                // );
              },
              child: const Text(
                'Login',
              ),
            )
          ],
        ),
      ),
    ));
  }
}
