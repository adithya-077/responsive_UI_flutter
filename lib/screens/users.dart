import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/provider/signupprovider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserAvailable extends StatelessWidget {
  const UserAvailable({Key? key}) : super(key: key);

  static String routeName = 'users-availa';
  @override
  Widget build(BuildContext context) {
    final users = Provider.of<SignUpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      extendBodyBehindAppBar: true,
      body: ListView.builder(
          itemCount: users.usersList.length,
          itemBuilder: (context, index) {
            return Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.delete_outline),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
              key: ValueKey(users.usersList[index].userName),
              child: Card(
                color: Colors.amber.shade300,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        users.usersList[index].userName,
                        style: GoogleFonts.bungee(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        users.usersList[index].email,
                        style: GoogleFonts.belleza(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
