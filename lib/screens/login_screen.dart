import 'package:flutter/material.dart';
import '../widgets/components.dart';
import 'signup_screen.dart';

const String baseUrl =
    "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/main/";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: fondoGradiente,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(height: 30),

              Image.network(baseUrl + "logo.png", height: 70),

              const SizedBox(height: 20),

              const Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 30),

              campo("Email"),
              const SizedBox(height: 15),
              campo("Password", isPassword: true),

              const SizedBox(height: 30),

              botonPrincipal("Entrar", () {}),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignUpScreen()),
                  );
                },
                child: const Text("¿No tienes cuenta? Regístrate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}