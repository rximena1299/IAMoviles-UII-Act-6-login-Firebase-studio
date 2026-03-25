import 'package:flutter/material.dart';

const Color rojo1 = Color(0xFFFF2D55);

// 🌈 FONDO
const BoxDecoration fondoGradiente = BoxDecoration(
  gradient: LinearGradient(
    colors: [Color(0xFFFFE5EC), Colors.white],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
);

// 🔴 BOTÓN PRINCIPAL
Widget botonPrincipal(String texto, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: rojo1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

// ⚪ BOTÓN SECUNDARIO
Widget botonSecundario(String texto, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: rojo1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          texto,
          style: const TextStyle(
            color: rojo1,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

// 🧾 INPUT
Widget campo(String hint, {bool isPassword = false}) {
  return TextField(
    obscureText: isPassword,
    decoration: InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}