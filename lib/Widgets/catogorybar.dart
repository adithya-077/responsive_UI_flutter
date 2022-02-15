import 'package:flutter/material.dart';
import 'package:flutter_application_brainstrom/screens/aboutus.dart';

class CatogryBar extends StatefulWidget {
  const CatogryBar({Key? key}) : super(key: key);

  @override
  _CatogryBarState createState() => _CatogryBarState();
}

class _CatogryBarState extends State<CatogryBar> {
  final List<String> listToogleBar = [
    'Home',
    'Clients',
    'Service',
    'About Us',
    'Contact',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 2),
      height: screenSize.height * 0.06,
      width: screenSize.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listToogleBar.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;

              if (selectedIndex == 3) {
                Navigator.of(context).pushNamed(AboutUs.routeName);
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listToogleBar[index],
                  style: TextStyle(
                      color: selectedIndex == index
                          ? Colors.black
                          : Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 3,
                  width: 22,
                  margin: EdgeInsets.only(top: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.transparent,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
