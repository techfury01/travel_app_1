import 'package:flutter/material.dart';
import 'package:travel_app/place_details_screen.dart';
import 'package:travel_app/svg.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //content
          Padding(
            padding: const EdgeInsets.only(
              top: 60,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Paris",
                          style: TextStyle(
                            color: Color(0xFF242424),
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        mapIcon,
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Choose another",
                      style: TextStyle(
                        color: Color(0xFF242424),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  //search box
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Enter name or category',
                            hintStyle: TextStyle(
                              color: Color(0xFF242424),
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF242424),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      "Category",
                      style: TextStyle(
                        color: Color(0xFF242424),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //categories
                  SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //category 1
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEACB8E),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: starIcon,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Top 30 places",
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        //category 2
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF8DE8C7),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: natureIcon,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Nature",
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        //category 3
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0F0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEB5757),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: foodIcon,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Cuisine",
                                  style: TextStyle(
                                    color: Color(0xFF242424),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        color: Color(0xFF242424),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //popular places
                  SizedBox(
                    height: 280,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //item 1
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PlaceDetailsScreen())),
                            child: SizedBox(
                              width: 220,
                              height: 440,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/image1.png",
                                    height: 440,
                                    fit: BoxFit.fill,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            right: 20,
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(4.0),
                                              child: Icon(
                                                Icons.favorite,
                                                color: Color(0xFFEB5757),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(),
                                      //place name
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 20,
                                        ),
                                        child: SizedBox(
                                          width: 150,
                                          child: Text(
                                            "Monument to Salavat Yulaev",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                      //rating
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 5,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Colors.white.withOpacity(0.2),
                                                Colors.white.withOpacity(0.2),
                                              ],
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                              vertical: 5,
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                  size: 15,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  "4.9",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //item 2
                        SizedBox(
                          width: 220,
                          height: 440,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/image2.png",
                                height: 440,
                                fit: BoxFit.fill,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        right: 20,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFEB5757),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  //place name
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: SizedBox(
                                      width: 150,
                                      child: Text(
                                        "Monument to Salavat Yulaev",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //rating
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.white.withOpacity(0.2),
                                            Colors.white.withOpacity(0.2),
                                          ],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //item 3
                        SizedBox(
                          width: 220,
                          height: 440,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/image3.png",
                                height: 440,
                                fit: BoxFit.fill,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        right: 20,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFEB5757),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  //place name
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: SizedBox(
                                      width: 150,
                                      child: Text(
                                        "Monument to Salavat Yulaev",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  //rating
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 5,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.white.withOpacity(0.2),
                                            Colors.white.withOpacity(0.2),
                                          ],
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 15,
                                            ),
                                            SizedBox(width: 5),
                                            Text(
                                              "4.9",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //bottom navigation bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xFFEB5757),
                      child: mainIcon,
                    ),
                    likedIcon,
                    chatIcon,
                    settingsIcon,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
