import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(150, 40),
              bottomLeft: Radius.elliptical(150, 40),
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Profile",
              style: GoogleFonts.varelaRound(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(0, -40, 0),
          child: Stack(
            children: [
              Container(
                height: 190,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[200]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 2),
                child: Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(color: Colors.blueGrey, shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 30,
                child: Column(
                  children: [
                    Text(
                      "Wahyu yahya nugraha",
                      style: GoogleFonts.varelaRound(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,),
                    Text(
                      "Citra Raya,Tangerang", style: GoogleFonts.varelaRound(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,),
                    Text(
                      "0852-1973-0685", style: GoogleFonts.varelaRound(fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
       listTile(Icons.photo,"PHOTO"),
        listTile(Icons.person, "NAMA"),
        listTile(Icons.location_city, "TEMPAT TINGGAL"),
        listTile(Icons.phone, "CONTACT")
      ],
    );
  }
}

Widget listTile(IconData icon, String title){
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 15),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListTile(
        tileColor: Colors.white,
        leading: Icon(
          icon,
          color: Colors.teal,),
        title: Text(title),
        trailing: Icon(
          Icons.edit,color: Colors.teal,),
      ),
    ),
  );
}
