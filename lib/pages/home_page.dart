import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:pdpui9/pages/feed_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPage = 0;
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        title: Text("Instagram", style: TextStyle(color: Colors.grey[400]),),
        leading: IconButton(
          icon: const Icon(FeatherIcons.camera),
          color: Colors.grey[400],
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.tv),
            color: Colors.grey[400],
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(FeatherIcons.send),
            color: Colors.grey[400],
            onPressed: (){},
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState((){
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.home),
              label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.plusSquare),
            label: "Upload",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart),
            label: "Likes",
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
