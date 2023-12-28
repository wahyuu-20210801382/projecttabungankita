import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projecttabungankita/profile_page.dart';
import 'package:projecttabungankita/wallet_page.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget home() {
      return Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(100, 40),
                  bottomRight: Radius.elliptical(100, 40),
                ),
              ),
              height: 230,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "E-Wallet",
                  style: GoogleFonts.poppins(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            Transform(
              transform: Matrix4.translationValues(0, -45, 0),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: GestureDetector(
                  onTap: () {
                    // Navigasi ke halaman e-wallet saat baris dirayap diklik
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => walletpage()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          tabBar(CryptoFontIcons.BTS, "Buy"),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: VerticalDivider(
                              thickness: 2,
                            ),
                          ),
                          tabBar(Icons.money, "Sell")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          home(),
          walletpage(),
          ProfilePage(), // Ganti dengan halaman profil yang sesuai
        ],
      ),
    );
  }
}

Widget tabBar(IconData data, String title) {
  return Expanded(
      child: Column(
        children: [Icon(data), Text(title)],
      ));
}
