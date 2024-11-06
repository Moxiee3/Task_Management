import 'package:flutter/material.dart';
import 'package:schedule_app/colors/color.dart';

class AppHomePage extends StatefulWidget {
  const AppHomePage({super.key});

  @override
  State<AppHomePage> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: kheaderColor,
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("images/bg2.png"),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Hi, Kimberly!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190),
                      child: Icon(Icons.notifications),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //promo message
                          Text(
                            'Your today`s task\nalmost done!',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),

                          const SizedBox(
                            height: 12,
                          ),
                          //redem button

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.white, width: 10),
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'See Details',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: cardColor),
                            ),
                          ),
                        ],
                      ),
                      //Image
                      Image.asset(
                        'images/white80.png',
                        height: 70,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 300,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ListView(
              children: [
                seeAllItems("YOUR TASKS", 3),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      yourTaskItems(
                        Colors.red,
                        3,
                        "The Basic of programming I",
                      ),
                      yourTaskItems(
                        Colors.green,
                        10,
                        "Principle of good design",
                      ),
                      yourTaskItems(
                        Colors.red,
                        10,
                        "The Basic of Cyber Security I",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                seeAllItems("TODAY CLASSES", 4),
                todayclassesItems(
                  "07:00",
                  "The Basic of programming I",
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDRlp-KGr_M94k_oor4Odjn2UzbAS7n1YoA&s",
                  "Gabriel Sutton",
                ),
                todayclassesItems(
                  "09:30",
                  "The Basic of Cyber Security I",
                  "https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?s=612x612&w=0&k=20&c=d8W_C2D-2rXlnkyl8EirpHGf-GpM62gBjpDoNryy98U=",
                  "Jessie Reeves",
                ),
                todayclassesItems(
                  "09:30",
                  "The Basic of Cyber Security I",
                  "https://media.istockphoto.com/id/1154642632/photo/close-up-portrait-of-brunette-woman.jpg?s=612x612&w=0&k=20&c=d8W_C2D-2rXlnkyl8EirpHGf-GpM62gBjpDoNryy98U=",
                  "Jessie Reeves",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Container yourTaskItems(Color color, int dayLeft, String courseTitle) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(12),
      height: 170,
      width: 175,
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Deadline",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black26,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor: color,
              ),
              const SizedBox(width: 5),
              Text(
                "$dayLeft days left",
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 130,
            child: Text(
              courseTitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Row seeAllItems(title, number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: "($number)",
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Text(
          "See all",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: secondTextColor,
              fontSize: 15),
        )
      ],
    );
  }

  Container todayclassesItems(time, title, profile, name) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 110,
      decoration: BoxDecoration(
        color: kCardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const Text(
                "AM",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Container(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: const Text(
                        "4.4.5",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(profile),
                      radius: 12,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
