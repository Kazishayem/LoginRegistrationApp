// import 'dart:ui';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Create Account',
//       theme: ThemeData(
//         useMaterial3: true,
//         inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: Colors.white.withOpacity(0.08),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: BorderSide(color: Colors.white.withOpacity(0.25)),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: BorderSide(color: Colors.white.withOpacity(0.25)),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(color: Colors.white, width: 1.5),
//           ),
//           labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
//           hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
//           prefixIconColor: Colors.white,
//           contentPadding: const EdgeInsets.symmetric(
//             horizontal: 16,
//             vertical: 18,
//           ),
//         ),
//       ),
//       home: const CreateAccountPage(),
//     );
//   }
// }

// class CreateAccountPage extends StatefulWidget {
//   const CreateAccountPage({super.key});

//   @override
//   State<CreateAccountPage> createState() => _CreateAccountPageState();
// }

// class _CreateAccountPageState extends State<CreateAccountPage> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameCtrl = TextEditingController();
//   final _emailCtrl = TextEditingController();
//   final _passCtrl = TextEditingController();
//   bool _obscure = true;

//   @override
//   void dispose() {
//     _nameCtrl.dispose();
//     _emailCtrl.dispose();
//     _passCtrl.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // Gradient background similar to the reference
//           const _BackgroundGradient(),

//           // Centered, glassy card with the form
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(24),
//                 child: BackdropFilter(
//                   filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
//                   child: Container(
//                     width: 420,
//                     padding: const EdgeInsets.all(24),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.08),
//                       borderRadius: BorderRadius.circular(24),
//                       border: Border.all(color: Colors.white.withOpacity(0.25)),
//                     ),
//                     child: Form(
//                       key: _formKey,
//                       child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           const SizedBox(height: 8),
//                           const Text(
//                             'Create Account',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 24,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                           const SizedBox(height: 6),
//                           Text(
//                             'Sign up to get started',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.white.withOpacity(0.85),
//                               fontSize: 14,
//                             ),
//                           ),
//                           const SizedBox(height: 24),

//                           // Full name
//                           TextFormField(
//                             controller: _nameCtrl,
//                             style: const TextStyle(color: Colors.white),
//                             decoration: const InputDecoration(
//                               labelText: 'Full Name',
//                               prefixIcon: Icon(Icons.person_outline),
//                             ),
//                             validator: (v) => (v == null || v.trim().isEmpty)
//                                 ? 'Enter your name'
//                                 : null,
//                           ),
//                           const SizedBox(height: 12),

//                           // Email
//                           TextFormField(
//                             controller: _emailCtrl,
//                             keyboardType: TextInputType.emailAddress,
//                             style: const TextStyle(color: Colors.white),
//                             decoration: const InputDecoration(
//                               labelText: 'Email',
//                               prefixIcon: Icon(Icons.email_outlined),
//                             ),
//                             validator: (v) {
//                               if (v == null || v.trim().isEmpty)
//                                 return 'Enter your email';
//                               final ok = RegExp(
//                                 r'^[^@]+@[^@]+\.[^@]+',
//                               ).hasMatch(v);
//                               return ok ? null : 'Enter a valid email';
//                             },
//                           ),
//                           const SizedBox(height: 12),

//                           // Password
//                           TextFormField(
//                             controller: _passCtrl,
//                             obscureText: _obscure,
//                             style: const TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               labelText: 'Password',
//                               prefixIcon: const Icon(Icons.lock_outline),
//                               suffixIcon: IconButton(
//                                 icon: Icon(
//                                   _obscure
//                                       ? Icons.visibility
//                                       : Icons.visibility_off,
//                                 ),
//                                 onPressed: () =>
//                                     setState(() => _obscure = !_obscure),
//                               ),
//                             ),
//                             validator: (v) => (v != null && v.length >= 6)
//                                 ? null
//                                 : 'Min 6 characters',
//                           ),

//                           const SizedBox(height: 20),

//                           // Sign Up button
//                           SizedBox(
//                             height: 52,
//                             child: FilledButton(
//                               style: FilledButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(18),
//                                 ),
//                                 backgroundColor: Colors.white,
//                                 foregroundColor: const Color(0xFF0E1C2F),
//                               ),
//                               onPressed: () {
//                                 if (_formKey.currentState!.validate()) {
//                                   // TODO: hook up to backend / Firebase
//                                   ScaffoldMessenger.of(context).showSnackBar(
//                                     const SnackBar(
//                                       content: Text('Signing up...'),
//                                     ),
//                                   );
//                                 }
//                               },
//                               child: const Text(
//                                 'SIGN UP',
//                                 style: TextStyle(
//                                   letterSpacing: 0.8,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                             ),
//                           ),

//                           const SizedBox(height: 14),

//                           // Footer: already have account
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
                                
//                                 style: TextStyle(
//                                   color: Colors.white.withOpacity(0.9),
//                                 ),
//                               ),
//                               TextButton(
//                                 onPressed: () {},
//                                 child: const Text(
//                                   'Login',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _BackgroundGradient extends StatelessWidget {
//   const _BackgroundGradient();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color(0xFF0E1C2F), // deep blue
//             Color(0xFF1E3A5C), // mid blue
//           ],
//         ),
//       ),
//       child: Align(
//         alignment: Alignment.topCenter,
//         child: Container(
//           margin: const EdgeInsets.only(top: 72),
//           width: 340,
//           height: 340,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             // soft radial glow at top as seen in many modern UIs
//             gradient: RadialGradient(
//               radius: 0.6,
//               colors: [Color(0xFF6BA5FF), Colors.transparent],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
