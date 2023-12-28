import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projecttabungankita/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplashScreen(); // Fungsi untuk menunggu beberapa detik sebelum pindah ke halaman berikutnya
  }

  _loadSplashScreen() async {
    // Tunggu selama 7 detik, gantilah sesuai kebutuhan
    await Future.delayed(Duration(seconds: 7));
    // Pindah ke halaman berikutnya
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()), // Ganti LoginPage dengan halaman berikutnya
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"), // Sesuaikan path gambar dengan proyek Anda
            SizedBox(height: 20),
            Text(
              "Selamat Datang Di Tabungan Kita!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('Selamat datang di aplikasi Tabungan Kita!'),
      ),
    );
  }
}
