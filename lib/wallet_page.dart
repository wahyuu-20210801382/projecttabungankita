import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projecttabungankita/home_page.dart';

Widget walletpage() {
  return Column(
    children: [
      Container(
        height: 230,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(100, 40),
            bottomRight: Radius.elliptical(100, 40),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "TRANSAKSI",
            style: GoogleFonts.varelaRound(
              fontSize: 60,
              color: Colors.white,
            ),
          ),
        ),
      ),
      Transform(
        transform: Matrix4.translationValues(0, -45, 0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                tabBar(Icons.send, "KIRIM"),
                VerticalDivider(
                  thickness: 2,
                ),
                tabBar(Icons.upcoming, "ISI SALDO"),
              ],
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "AKTIFITAS TRANSAKSI",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      const SizedBox(height: 10), // Fixed typo in SizedBox
      listView(CryptoFontIcons.BTC, "RP 150.000", "Untuk Liburan", Colors.yellow),
      listView(CryptoFontIcons.BTC, "RP 200.000", "Untuk Qurban", Colors.yellow),
      listView(CryptoFontIcons.BTC, "RP 300.000", "Tabungan Darurat", Colors.yellow),
      listView(Icons.add, "Tambahkan Tabungan", "Tambahkan Impian", Colors.white)
    ],
  );
}


Widget listView(
    IconData icon, String title, String subtitle, Color backgroundColor){
  return Padding(
    padding: const EdgeInsets.fromLTRB(25,2,25,9),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.blueGrey,
        leading: Container(
          height: double.infinity,
          child: Icon(
            icon,
            color: backgroundColor
          ),
          ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    ),
  );
}