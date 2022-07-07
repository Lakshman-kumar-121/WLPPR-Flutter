import 'package:flutter/material.dart';
import 'package:wallpaper/Imageview.dart';

class carsandbike extends StatefulWidget {
  const carsandbike({Key? key}) : super(key: key);
  @override
  _carsandbikeState createState() => _carsandbikeState();
}

class _carsandbikeState extends State<carsandbike> {
 
  List<String> img = [
  'https://wallpaperaccess.com/full/2941246.jpg',
  'https://i.pinimg.com/originals/4f/3f/e7/4f3fe76349c5ade57a3b96261b36953b.jpg',
  'https://i.pinimg.com/originals/bc/13/0b/bc130bc2f6436cffe85d38c052efc3d2.jpg',
  'https://wallpaperaccess.com/full/4412136.jpg',
  'https://wallpapercave.com/wp/wp4185803.jpg',
  'https://i.pinimg.com/originals/31/cc/12/31cc1282e77b5cbe812a5b6b9153f71e.jpg',
  'https://images.unsplash.com/photo-1518306727298-4c17e1bf6942?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjB8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
  'https://wallpaperaccess.com/full/2058364.jpg',
  'https://i.pinimg.com/originals/3e/67/0a/3e670a1ec0232a69035fc3ce00c44ffc.jpg',
  'https://wallpapercave.com/wp/wp8957130.jpg',
  'https://wallpaperaccess.com/full/957337.jpg',
  'https://wallpapercave.com/wp/wp4402933.jpg',
  'https://wallpapercave.com/wp/wp4843400.jpg',
  'https://www.teahub.io/photos/full/14-140261_car-wallpaper-for-android-mobile-hd-best-of.jpg',
  'https://www.wallpaperkiss.com/wimg/b/219-2196157_big.jpg',
  'https://www.desktopbackground.org/download/768x1280/2013/12/20/688344_cool-iphone-6-car-wallpapers-best-wallpapers_1035x1841_h.jpg',
  'https://wallpapercave.com/wp/wp5917264.jpg',
  'https://wallpapercave.com/wp/wp4843406.jpg',
  'https://wallpaperaccess.com/full/1247880.jpg',
  'https://images.unsplash.com/photo-1567808291548-fc3ee04dbcf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Nnx8fGVufDB8fHx8&w=1000&q=80',
  'https://wallpaperbat.com/img/84076-mobile-ktm-bike-wallpaper.jpg',
  'https://www.desktopbackground.org/p/2014/10/05/835242_muscle-car-wallpapers-hd-backgrounds-download-mobile-iphone-6s_640x1136_h.jpg',
  'https://car-pictures-download.com/wp-content/uploads/Ferrari-458-Italia-car-phone-wallpaper-HD.jpg',
  'https://s167.daydaynews.cc/?url=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F12229004051%2F641',
  'https://www.teahub.io/photos/full/193-1939377_bike-4k-wallpaper-for-mobile.jpg',
  'https://www.mordeo.org/files/uploads/2017/11/KTM-Duke-790-HD-Mobile-Wallpaper.jpg',
  'https://themobilewallpaper.com/uploads/blog_images/Car-Dodge-challenger-hd-mobile-wallpaper-1611265475.jpg',
  'https://w0.peakpx.com/wallpaper/5/671/HD-wallpaper-batmobile-lamborghini-huracan-black-car-supercar-sports-america-new-batman.jpg',
  'https://www.itl.cat/pngfile/big/216-2163937_motor-cross-image-free-download-by-parvaiz-negro.jpg',
  'https://www.desktopbackground.org/download/768x1280/2012/08/07/432900_toyota-gt-super-art-car-wallpapers-hd-wallpapers_2560x1600_h.jpg',
  'https://w0.peakpx.com/wallpaper/346/911/HD-wallpaper-bike-bike-super.jpg',
  'https://cutewallpaper.org/22/android-mobile-car-wallpapers/car-phone-wallpapers-top-free-car-phone-backgrounds-wallpaperaccess.jpg',
  'https://wallpaperaccess.com/full/1680682.jpg',
  'https://images.unsplash.com/photo-1531327431456-837da4b1d562?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdG9yYmlrZXxlbnwwfHwwfHw%3D&w=1000&q=80',
  'https://c4.wallpaperflare.com/wallpaper/709/285/134/action-active-adventure-bike-wallpaper-preview.jpg',
  'https://1.bp.blogspot.com/-GndVwC_YyZs/XcOrHxYOI8I/AAAAAAAAJxc/gSnaso7qaOgtCDlXNALf6zB-K5r0cZDPQCLcBGAsYHQ/s1600/chopper.jpg',
  'https://i.pinimg.com/originals/65/e6/46/65e646a04d5b770b518f1208c3374800.jpg',
  'https://i.pinimg.com/originals/0c/5e/91/0c5e9134e9e6b0dbd4afec9cdbd9b9c4.jpg',
  'https://w0.peakpx.com/wallpaper/417/126/HD-wallpaper-motorbike-bike-car-vehicle.jpg',
  'https://images.unsplash.com/photo-1525160354320-d8e92641c563?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW90b3JiaWtlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
  'https://wallpaperaccess.com/full/1948456.jpg',
  'https://wallpaperaccess.com/full/2549051.jpg',
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