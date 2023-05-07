import 'package:flutter/material.dart';
import 'package:travel_app/svg.dart';

class PlaceDetailsScreen extends StatelessWidget {
  const PlaceDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 540,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/image1.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  //
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //back button
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 60,
                            left: 20,
                          ),
                          child: InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 10,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      //guide
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          bottom: 10,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
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
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/guide_dp.png",
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  children: const [
                                    Text(
                                      "Azat Khabirov",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "Location guide",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //fav icon
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 20,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xFFFF678B),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Shulgaт-Tash cave",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Text(
                "A truly amazing example of the creation of nature, the Kapova cave with cave paintings of ancient people with...",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Text(
                      "Read more",
                      style: TextStyle(
                        color: Color(0xFFFF678B),
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Color(0xFFFF678B),
                    ),
                  ],
                ),
              ),
            ),
            //Facilities
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //item 1
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: cardIcon,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Text(
                                "from 90\$",
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //item 2
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: carIcon,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Text(
                                "from 90\$",
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //item 3
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: breakfastIcon,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Text(
                                "Full Board",
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //item 4
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F0F0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 25,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: insuranceIcon,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 15,
                              ),
                              child: Text(
                                "Insurance",
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //buy button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: MaterialButton(
                color: const Color(0xFFFF678B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Buy a tour",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
