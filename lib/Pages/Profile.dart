import 'package:flutter/material.dart';
import 'package:instagram_ui/Widgets/Info_items.dart';
import 'package:instagram_ui/Widgets/Profile_Picture.dart';
import 'package:instagram_ui/Widgets/Story_Items.dart';
import 'package:instagram_ui/Widgets/Tap_Item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "erik01",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Profile_picture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      infoItems(
                        title: "Post",
                        value: "999",
                      ),
                      infoItems(
                        title: "Followers",
                        value: "9999232",
                      ),
                      infoItems(
                        title: "Folowing",
                        value: "9",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Erik Firmansyah",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: const TextSpan(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of ",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  letterSpacing: 0.2,
                ),
                children: [
                  TextSpan(
                    text: "#hasting",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      letterSpacing: 0.9,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Link goes here",
              style: TextStyle(
                fontSize: 13,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[100],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Story_Items("Story 1"),
                  Story_Items("Story 2"),
                  Story_Items("Story 3"),
                  Story_Items("Story 4"),
                  Story_Items("Story 5"),
                  Story_Items("Story 6"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TapItems(Icons.grid_on_outlined, true),
              TapItems(Icons.person_pin_outlined, false),
              // Expanded(
              //     child: Container(child: Icon(Icons.))),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/200/200",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_rounded),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
