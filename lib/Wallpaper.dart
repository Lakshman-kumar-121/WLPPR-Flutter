import 'package:flutter/material.dart';
import 'package:wallpaper/Imageview.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  _NatureState createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  List<String> img = [
    'https://images.pexels.com/photos/9928437/pexels-photo-9928437.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/2832034/pexels-photo-2832034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://wallpaperaccess.com/full/157077.jpg',
    'https://images.pexels.com/photos/556669/pexels-photo-556669.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1366913/pexels-photo-1366913.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://i.pinimg.com/originals/00/19/6c/00196c7c8e41a7b958daae0543694ce1.jpg',
    'https://wallpapercave.com/wp/wp4855061.jpg',
    'https://www.bhaktisansar.com/wp-content/uploads/2019/07/google-pixel-2-wallpaper-2.jpg',
    'https://wallpaperscute.com/wp-content/uploads/2019/03/Spring-Mobile-Wallpaper-HD.jpg',
    'https://th.bing.com/th/id/OIP.TGd-axyOOwP-8jVUkzbEbAHaPO?pid=ImgDet&rs=1',
    'https://th.bing.com/th/id/OIP.MR0uIba0NKjWT3pc6BrKFAHaLH?pid=ImgDet&rs=1',
    'https://images.unsplash.com/photo-1523428461295-92770e70d7ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=995&q=80',
    'https://images.unsplash.com/photo-1508062878650-88b52897f298?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1227&q=80',
    'https://images.unsplash.com/photo-1641371633971-18ed69d25fe4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80',
    'https://th.bing.com/th/id/R.797247a0770eff39084b17886e99fc77?rik=rOwDqNQOrzj0fQ&riu=http%3a%2f%2fwww.designbolts.com%2fwp-content%2fuploads%2f2018%2f10%2fForest-Trees-Google-2-XL-3-XL-Wallpaper-1.jpg&ehk=lx6YjVMB47VG4jaykEr9UAfLMQcOXnq%2b3wZ81zDNNek%3d&risl=1&pid=ImgRaw&r=0',
    'https://th.bing.com/th/id/OIP.VlWdHge9lBmBhatlaFUpGQHaQB?pid=ImgDet&rs=1',
    'https://www.mordeo.org/files/uploads/2018/05/Sun-Light-Snow-Mountains-In-France-HD-Mobile-Wallpaper.jpg',
    'https://www.mordeo.org/files/uploads/2018/09/Lofoten-Islands-Norway-Mountains-Sunrise-4K-Ultra-HD-Mobile-Wallpaper-950x1689.jpg',
    'https://i.pinimg.com/564x/b7/a3/f1/b7a3f17e35daa594fe8b38c419ec9793.jpg',
    'https://www.teahub.io/photos/full/21-212188_hd-wallpaper-portrait-portrait-pictures-of-nature.jpg',
    'https://www.teahub.io/photos/full/61-617060_river-lakeside-village-mountains-iphone-wallpaper-scandinavia-download.jpg',
    'https://images.pexels.com/photos/3284167/pexels-photo-3284167.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/3879071/pexels-photo-3879071.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/9899100/pexels-photo-9899100.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1591382/pexels-photo-1591382.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1433052/pexels-photo-1433052.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/5205307/pexels-photo-5205307.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.unsplash.com/flagged/photo-1550489518-40f49ba4bf20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80',
    'https://images.pexels.com/photos/1212600/pexels-photo-1212600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/3894805/pexels-photo-3894805.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/9890683/pexels-photo-9890683.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/2332739/pexels-photo-2332739.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/1322074/pexels-photo-1322074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/2670898/pexels-photo-2670898.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1152707/pexels-photo-1152707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1699023/pexels-photo-1699023.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1612461/pexels-photo-1612461.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1274260/pexels-photo-1274260.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1837603/pexels-photo-1837603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1271620/pexels-photo-1271620.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1496373/pexels-photo-1496373.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1670187/pexels-photo-1670187.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/2378127/pexels-photo-2378127.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1535162/pexels-photo-1535162.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/775203/pexels-photo-775203.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/3538659/pexels-photo-3538659.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/10705809/pexels-photo-10705809.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/1921336/pexels-photo-1921336.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/3116410/pexels-photo-3116410.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/10794405/pexels-photo-10794405.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
    'https://images.pexels.com/photos/3565746/pexels-photo-3565746.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/3116422/pexels-photo-3116422.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
    'https://images.pexels.com/photos/10744078/pexels-photo-10744078.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
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
