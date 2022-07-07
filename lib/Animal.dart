import 'package:flutter/material.dart';
import 'package:wallpaper/Imageview.dart';

class Animal extends StatefulWidget {
  const Animal({Key? key}) : super(key: key);

  @override
  _AnimalState createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  List<String> img = [
    'https://wallpaperaccess.com/full/2508585.jpg',
    'https://wallpaperaccess.com/full/1254230.jpg',
    'https://bestwallpapers.net/wp-content/uploads/2020/01/Animals-Wallpapers-Download-Free-Animals-HD-Wallpapers-for-Mobile-8.jpeg',
    'https://images.unsplash.com/photo-1557008075-7f2c5efa4cfd?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
    'https://wallpaperaccess.com/full/896907.jpg',
    'https://images.unsplash.com/photo-1484406566174-9da000fda645?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=989&q=80',
    'https://i.pinimg.com/originals/a2/0a/c5/a20ac5ea11feb798a9a9e7c6656046c6.jpg',
    'https://images.unsplash.com/photo-1543946207-39bd91e70ca7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
    'https://wallpaperaccess.com/full/2734399.jpg',
    'https://wallpaperaccess.com/full/3175622.png',
    'https://images.unsplash.com/photo-1597666994536-e299696c6a61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80',
    'https://images.unsplash.com/photo-1547407139-3c921a66005c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
    'https://images.unsplash.com/photo-1562230719-839149f1f90d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1529451310546-178d75816ffc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://wallpaperaccess.com/full/1254180.png',
    'https://i.pinimg.com/736x/4b/f9/16/4bf9160bf6a63f22518bde065f0dd426.jpg',
    'https://wallpaperscute.com/wp-content/uploads/2018/03/Panda-iPhone-Wallpaper-HD.jpg',
    'https://i.pinimg.com/originals/a0/05/47/a0054732fdb1dd95b2283ee8c7fb5241.jpg',
    'https://wallpapercave.com/wp/wp6410462.jpg',
    'https://wallpapercave.com/wp/wp6778802.png',
    'https://www.wallpapertip.com/wmimgs/101-1019336_running-horse-hd-wallpaper-for-mobile.jpg',
    'https://wallpaperbat.com/img/424974-snake-phone-wallpaper-top-free-snake-phone-background.jpg',
    'https://images.unsplash.com/photo-1566964159794-a69cfb93b4a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
    'https://wallshub.net/wp-content/uploads/2021/08/Deer-Wallpaper-HD.jpg',
    'https://wallpapercave.com/wp/wp2697098.jpg',
    'https://images.unsplash.com/photo-1484406566174-9da000fda645?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
    'https://www.teahub.io/photos/full/86-866910_lion-wallpaper-for-mobile.jpg',
    'https://wallpapercave.com/wp/wp5709369.jpg',
    'https://images.unsplash.com/photo-1552053831-71594a27632d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
    'https://wallpaperaccess.com/full/2454292.jpg',
    'https://1.bp.blogspot.com/-oqPZORNY7SQ/X4Wf-EPvY2I/AAAAAAAAMpc/lU4QP9_oaHwIPOSJx7HEvbpsPCf4DlCQACLcBGAsYHQ/s1600/Deer-mobile-wallpaper.jpeg',
    'https://w0.peakpx.com/wallpaper/180/292/HD-wallpaper-lion-black-light-lightning.jpg',
    'https://wallpapercave.com/wp/wp6341544.jpg',
    'https://images.pexels.com/photos/1366913/pexels-photo-1366913.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/320014/pexels-photo-320014.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://wallpapercave.com/wp/wp4819137.jpg',
    'https://wallpapersflix.com/wp-content/uploads/2020/07/Bear-Wallpaper-HD.jpg',
    'https://wallpaperaccess.com/full/142011.png',
    'https://images.pexels.com/photos/6796832/pexels-photo-6796832.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage('https://wallpaperaccess.com/full/396671.jpg'),
        fit: BoxFit.cover,
      )),
      child: ListView(
        children: img.map((img) {
          return Container(
            margin: EdgeInsets.all(5),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bigimg("$img")));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Ink.image(
                        image: NetworkImage(img),
                        height: 550,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
