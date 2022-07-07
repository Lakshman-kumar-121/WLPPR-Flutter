import 'package:flutter/material.dart';
import 'package:wallpaper/Imageview.dart';

class games extends StatefulWidget {
  const games({Key? key}) : super(key: key);

  @override
  _gamesState createState() => _gamesState();
}

class _gamesState extends State<games> {
  
 
 
  List<String> img = [
  'https://wallpapercave.com/wp/wp3750690.jpg',
  'https://wallpapercave.com/wp/wp5410180.jpg',
  'https://i.pinimg.com/originals/49/f1/ff/49f1ff28d58558576a7ee923f5259e58.png',
  'https://wallpapercave.com/wp/wp5634149.jpg',
  'https://www.teahub.io/photos/full/192-1927303_high-resolution-wallpaper-assassins-creed-4-artwork..jpg',
    'https://i.pinimg.com/474x/fe/46/6a/fe466a3f89dae870044f10643af278af.jpg',
  'http://htc-wallpaper.com/wp-content/uploads/2013/09/assassins-creed-4-black-flag1.jpg',
  'https://wallpapercave.com/wp/wp7024856.jpg',
  'https://images.hdqwalls.com/download/assassins-creed-origins-bayek-4k-1y-1125x2436.jpg',
  'https://www.teahub.io/photos/full/192-1926241_assassin-s-creed-origins-wallpaper-assassins-creed-origins.jpg',
  'https://wallpaperaccess.com/full/113440.jpg',
  'https://wallpapercave.com/wp/wp5303964.jpg',
  'https://wallpapercave.com/wp/wp5539714.jpg',
  'https://www.mordeo.org/files/uploads/2020/05/Outriders-Video-Game-2020-4K-Ultra-HD-Mobile-Wallpaper-scaled.jpg',
  'https://wallpapercave.com/wp/wp7476938.jpg',
  'https://wallpapercave.com/wp/wp7907329.jpg',
  'https://www.mordeo.org/files/uploads/2020/09/Garena-Contra-Returns-Game-2020-4K-Ultra-HD-Mobile-Wallpaper-scaled.jpg',
  'https://i.pinimg.com/originals/f4/ad/cb/f4adcb777be1e09b99763a54ac787d1c.jpg',
  'https://www.mordeo.org/files/uploads/2020/05/Call-of-Duty-Black-OPS-4-4K-Ultra-HD-Mobile-Wallpaper-scaled.jpg.',
  'https://www.mordeo.org/files/uploads/2020/05/Assassins-Creed-Valhalla-PS5-Game-4K-Ultra-HD-Mobile-Wallpaper.jpg',
  'https://www.mordeo.org/files/uploads/2020/05/Crucible-Video-Game-4K-Ultra-HD-Mobile-Wallpaper.jpg',
  'https://www.mordeo.org/files/uploads/2018/05/Kratos-From-God-of-War-HD-Mobile-Wallpaper-768x1365.jpg',
  'https://wallpapercave.com/wp/wp6578340.jpg',
  'https://www.mordeo.org/files/uploads/2019/01/Scorpion-Mortal-Kombat-11-4K-Ultra-HD-Mobile-Wallpaper.jpg',
  'https://images.wallpapersden.com/image/download/mortal-kombat-legends-scorpions-revenge-movie_a25oaGyUmZqaraWkpJRoZWVlrWlqZWU.jpg',
  'https://mfiles.alphacoders.com/753/thumb-1920-753522.jpg',
  "https://s1.1zoom.me/b2441/406/Horses_Warriors_Mountains_Grasslands_Assassin's_558989_1080x1920.jpg",
  'https://wallpapercave.com/wp/wp6200969.jpg',
  'https://www.mordeo.org/files/uploads/2018/08/Assassins-Creed-Odyssey-Alexios-HD-Mobile-Wallpaper-950x1689.jpg',
  'https://i.pinimg.com/originals/f0/1f/6f/f01f6f8bf76534cb6e6086ca9bc527c5.jpg',
  'https://wallpapercave.com/wp/wp6341799.jpg',
  'https://wallpapercave.com/wp/wp6405086.jpg',
  'https://i.pinimg.com/originals/d2/00/e2/d200e2cf3c98f6d4ca6f5ea38d4fcdb4.jpg',
  'https://wallpaperaccess.com/full/1077354.jpg',
  'https://i.pinimg.com/originals/ca/32/77/ca327721a64086e72f6e9a3cde024786.jpg',
  'https://wallpapercave.com/wp/wp3575334.jpg',
  'https://mfiles.alphacoders.com/607/607845.jpg',
  'https://images.wallpapersden.com/image/download/prince-of-persia-warrior-within-art-game_Zmdra2aUmZqaraWkpJRmZW1lrWdoaWU.jpg',
  'https://w0.peakpx.com/wallpaper/74/165/HD-wallpaper-prince-of-persia-persia-prince.jpg',
  'https://www.mordeo.org/files/uploads/2020/09/Prince-of-Persia-Sands-of-Time-Remake-Poster-4K-Ultra-HD-Mobile-Wallpaper-950x1689.jpg',
  'https://wallpaperaccess.com/full/4877180.jpg',
  'https://wallpapercave.com/wp/wp1973975.jpg',


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://wallpaperaccess.com/full/396671.jpg'),
            fit: BoxFit.cover,
          )
      ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bigimg("$img")));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white , width: 2),
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Stack(
                    children: [
                      Ink.image(image: NetworkImage(img),

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
