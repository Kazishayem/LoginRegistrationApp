import 'package:flutter/material.dart';
import 'dart:ui';

class LoginRegistration extends StatelessWidget {
  LoginRegistration({super.key});

  // final _passwordCtrl = TextEditingController();
  // bool _obscure = true; // by default password hide

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Login & Registration",
      //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Color(0xFF0E1C2F), // dark blue
              // Color(0xFF1E3A5C), // lighter blue
              Color.fromARGB(255, 70, 133, 167), // dark blue
              Color.fromARGB(255, 58, 99, 150),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "REGISTRATION",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: 350,
                height: 600,
                // color: const Color.fromARGB(255, 179, 194, 221),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                    colors: [
                      Color(0xFF0E1C2F), // deep blue
                      Color(0xFF1E3A5C), // mid blue
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),

                child: Form(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // TextFormField(
                        //   style: const TextStyle(color: Colors.white),
                        //   decoration: InputDecoration(
                        //     labelText: 'name',
                        //     border: OutlineInputBorder(),
                        //   ),
                        // ),
                        // const SizedBox(height: 20),
                        // TextFormField(
                        //   decoration: InputDecoration(
                        //     labelText: 'name',
                        //     border: OutlineInputBorder(),
                        //   ),
                        // ),
                        // const SizedBox(height: 20),

                        //fullname
                        TextFormField(
                          style: const TextStyle(backgroundColor: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 166, 204, 230),
                            ),
                            prefixIcon: Icon(Icons.person_outline),
                          ),
                        ),
                        const SizedBox(height: 40),
                        //email
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 166, 204, 230),
                            ),
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),
                        const SizedBox(height: 40),
                        //password
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 166, 204, 230),
                            ),
                            prefixIcon: Icon(Icons.password),
                          ),
                        ),
                        const SizedBox(height: 40),

                        Row(
                          children: [
                            StatefulBuilder(
                              builder: (context, setState) {
                                bool isChecked = false; // local state
                                return Checkbox(
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                  activeColor: Colors.blue,
                                );
                              },
                            ),
                            const Expanded(
                              child: Text(
                                "I agree to the Terms and Conditions",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),

                        ElevatedButton(
                          onPressed: () {
                            print("button pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            elevation: 10.00, //background shadow
                            // shadowColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
