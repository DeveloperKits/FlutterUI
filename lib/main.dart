import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/myStyle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: mainColor,
          body: ListView(
            children: const [
              Stack(
                children: [
                  Posts(),
                  Profile(),
                  AppBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Posts extends StatelessWidget {
  const Posts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 290.0),
      child: Column(
        children: [
          PostItem(description: "Subscribe to notify you", likes: "11.6K", comments: "1.1K"),
          PostItem(description: "Subscribe to notify you", likes: "11.6K", comments: "1.1K"),
          PostItem(description: "Subscribe to notify you", likes: "11.6K", comments: "1.1K"),
          PostItem(description: "Subscribe to notify you", likes: "11.6K", comments: "1.1K"),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key, required this.description, required this.likes, required this.comments
  });

  final String description;
  final String likes;
  final String comments;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.0,
          width: double.infinity,
          margin: const EdgeInsets.only(left: 30.0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
              )
          ),
          
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
              child: Image.asset("assets/purple_image.jpeg", fit: BoxFit.cover,),
          ),
        ),
    
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 5, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Text(
                description,
                style: postText,
              ),

              Row(
                children: [
                  const Icon(Icons.comment, color: Colors.white60, size: 16,),
                  Text(comments, style: postText,),

                  const SizedBox(width: 20.0,),

                  const Icon(Icons.favorite_border, color: Colors.white60, size: 16,),
                  Text(likes, style: postText,),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      height: 270,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0))
      ),

      child: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/purple_image.jpeg",),
            radius: 20,
          ),

          SizedBox(height: 5.0,),

          Text("Akash Das", style: textNormal,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_history, size: 16.0, color: Colors.grey,),
              SizedBox(width: 2.0,),
              Text(
                "Dhaka, Bangladesh",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0
                ),
              ),
            ],
          ),

          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProfileReach(textUpper: "256", textLower: "Posts"),
              SizedBox(width: 35,),
              ProfileReach(textUpper: "25.6M", textLower: "Follower"),
              SizedBox(width: 35,),
              ProfileReach(textUpper: "25", textLower: "Following"),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileReach extends StatelessWidget {
  const ProfileReach({
    super.key, required this.textUpper, required this.textLower
  });

  final String textUpper;
  final String textLower;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(textUpper, style: textSmallBold,),
        Text(textLower, style: textSmall,),
      ],
    );
  }
}


class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0))
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Profile",
            style: tittleText,
          ),

          Icon(
            Icons.search,
            size: 30.0,
            color: mainColor,
          )
        ],
      ),
    );
  }
}
