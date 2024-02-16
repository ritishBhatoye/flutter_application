import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('TO_DO'),
      ),
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          child: ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("This is heading"),
            subtitle: Text("This is sub heading"),
            trailing: InkWell(
                onTap: () {
                  print("Tapped");
                },
                child: Icon(Icons.arrow_forward_ios)),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              child: Icon(
                Icons.local_activity,
                color: Colors.white,
                size: 50,
              ),
            ),
            Text(
              "Testing",
              style: GoogleFonts.aBeeZee(
                  fontSize: 20, fontWeight: FontWeight.w500),
            )

// GoogleFonts.poppins
            // GoogleFonts.montserrat
          ],
        ),
      ),
    );
  }
}
