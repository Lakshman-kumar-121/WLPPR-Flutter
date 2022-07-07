import 'package:flutter/material.dart';
import 'package:wallpaper/Imageview.dart';
class Flower extends StatefulWidget {
  const Flower({Key? key}) : super(key: key);

  @override
  _FlowerState createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {

  List<String> img = [
  'https://i.pinimg.com/originals/85/44/ea/8544ea5e13ba8523e613fac41d85dae4.jpg',
  'https://www.teahub.io/photos/full/2-24705_3d-flower-hd-wallpapers-for-mobile-flower-hd.jpg',
  'https://images.pexels.com/photos/1653629/pexels-photo-1653629.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://i.pinimg.com/originals/50/b7/76/50b776d0a09672aaa30b4b9f81e22174.jpg',
  'https://mobilewallpaperhd.com/wp-content/uploads/2021/03/Nature-Mobile-Wallpaper-HD.jpg',
    ',https://images.unsplash.com/photo-1608015226827-7605d8563dfe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80',
  'https://images.unsplash.com/photo-1546842931-886c185b4c8c?ixlib=rb-1.2.1',
  'https://w0.peakpx.com/wallpaper/441/262/HD-wallpaper-leaves-leave-green-background-nature.jpg',
  'https://wallpaperaccess.com/full/244180.jpg',
  'https://wallpapercave.com/wp/wp3222708.jpg',
  'https://2.bp.blogspot.com/-8CT3sRik-Qs/XLlaIHuGNsI/AAAAAAAAICw/86P1IWzjcl8mq4AStxdln44tsuJM8EAawCLcBGAs/s1600/flowers.jpg',
  'https://images.unsplash.com/photo-1497250681960-ef046c08a56e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
  'https://images.unsplash.com/photo-1447875569765-2b3db822bec9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTh8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://wallpaperaccess.com/full/815113.jpg',
  'https://1.bp.blogspot.com/-YqXb0mJOik8/XaAS8GPGWuI/AAAAAAAAJX8/GKKZCE-u9eAJgrO1eOajiTWvJrmmzr5ZgCLcBGAsYHQ/s2560/ambiance-beautiful-flower.jpg',
  'https://esquilo.io/wallpaper/wallpaper/20210704/mobile-wallpapers-flowers-flower-mobile-full-hd-wallpapers-wallpaper-preview.webp',
  'https://wallpaperscute.com/wp-content/uploads/2018/02/Cute-Flower-HD-Wallpapers-For-Mobile.jpg',
  'https://1.bp.blogspot.com/-9k33Wqq6ehU/XmHePDzrgFI/AAAAAAAALWs/X7yym6AJnlkuwhL6KJSfg--bgJx0R-4EwCLcBGAsYHQ/s1920/hd_rose-flower-wallpaper.jpg',
  'https://i.pinimg.com/originals/3d/28/76/3d287639068d550d71fdb1bb617e761d.jpg',
  'https://images.pexels.com/photos/1301981/pexels-photo-1301981.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1212487/pexels-photo-1212487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/5806695/pexels-photo-5806695.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/2033997/pexels-photo-2033997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1322444/pexels-photo-1322444.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1122639/pexels-photo-1122639.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/1381679/pexels-photo-1381679.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=',
  'https://images.pexels.com/photos/2293372/pexels-photo-2293372.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/2640024/pexels-photo-2640024.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/4004375/pexels-photo-4004375.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/10727245/pexels-photo-10727245.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/7233104/pexels-photo-7233104.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/7233102/pexels-photo-7233102.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/7593756/pexels-photo-7593756.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
  'https://images.pexels.com/photos/8920778/pexels-photo-8920778.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/7233106/pexels-photo-7233106.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  'https://images.pexels.com/photos/7233115/pexels-photo-7233115.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
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
