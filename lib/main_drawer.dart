import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  var img = 1;
  var imgnme;
  var imgas;
  var imgcolor;

  MyHeaderDrawer(this.img, {Key? key}) : super(key: key);
  @override
  _MyHeaderDrawerState createState() => new _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    lables();
    return Container(
      color: widget.imgcolor,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage('${widget.imgnme}'),
              ),
            ),
          ),
          Text(
            lables(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }

  String lables() {
    if (widget.img == 1) {
      widget.imgas = 'Nature';
      widget.imgcolor = Colors.green[700];
      widget.imgnme =
          'https://media.springernature.com/full/springer-cms/rest/v1/img/18893370/v1/height/320';
    }
    if (widget.img == 2) {
      widget.imgcolor = Colors.black87;
      widget.imgas = 'Games';
      widget.imgnme =
          'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg';
    }
    if (widget.img == 3) {
      widget.imgcolor = Colors.blueAccent;
      widget.imgas = 'Birds';
      widget.imgnme =
          'https://cdn.download.ams.birds.cornell.edu/api/v1/asset/132841291/640';
    }
    if (widget.img == 4) {
      widget.imgcolor = Colors.deepOrangeAccent;
      widget.imgas = 'Animals';
      widget.imgnme =
          'https://images.immediate.co.uk/production/volatile/sites/23/2019/10/Federico_Veronesi_Lions-cover-image-e359a4e.jpg?quality=90&resize=768%2C574';
    }
    if (widget.img == 5) {
      widget.imgcolor = Colors.pinkAccent;
      widget.imgas = 'Flower';
      widget.imgnme =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCM5vPdhr3apHdJMfpAaWik2g8lM5CZchgujWpY4cTkSRdyMdQzUfH60yPOgNmCWdsTYI&usqp=CAU';
    }
    if (widget.img == 6) {
      widget.imgcolor = Colors.pink;
      widget.imgas = 'Bike & Cars';
      widget.imgnme =
          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/588390-1625663609.jpg?resize=640:*';
    }
    if (widget.img == 7) {
      widget.imgcolor = Colors.grey[800];
      widget.imgas = 'About';
      widget.imgnme =
          'https://media.istockphoto.com/photos/silhouette-of-man-in-dark-place-anonymous-backlit-contour-a-picture-id1139459625?b=1&k=20&m=1139459625&s=170667a&w=0&h=zVpBlAmdwUDWIVf0Zxtb3idMCitol4nzII2qde8Ybag=';
    }
    return "${widget.imgas}";
  }
}
