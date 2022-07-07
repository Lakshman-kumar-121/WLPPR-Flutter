import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class Bigimg extends StatefulWidget {
  final String imgadrs;
  Bigimg(this.imgadrs, {Key? key } ) : super(key: key);
  @override
  _BigimgState createState() => new _BigimgState();
}

class _BigimgState extends State<Bigimg> with SingleTickerProviderStateMixin
{
  _save() async {
    var status  = await Permission.storage.request();
    if(status.isGranted) {
      var response = await Dio().get(
          "${widget.imgadrs}",
          options: Options(responseType: ResponseType.bytes));
      final result = await ImageGallerySaver.saveImage(
          Uint8List.fromList(response.data),
          quality: 60,
          name: "Hello");
      print(result);
    }
  }

  late TransformationController controller;
  TapDownDetails? tapDownDetails;

  late AnimationController animationController;
  Animation<Matrix4>? animation;

  @override
  void initState(){
    super.initState();

    controller = TransformationController();
    animationController = AnimationController(vsync: this,
        duration: Duration(milliseconds: 300) )..addListener(() {
          controller.value = animation!.value;
    });
  }
  @override
  void dispose(){
    controller.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image View'),
      ),
      body: Container(
        decoration:BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://wallpaperaccess.com/full/396671.jpg'),
            fit: BoxFit.cover
          )

        ),
        child: GestureDetector(
          onDoubleTapDown: (details) => tapDownDetails = details,
          onDoubleTap: (){
            final position = tapDownDetails!.localPosition;
            final double scale = 3;
            final x = -position.dx * (scale -1);
            final y = -position.dy * (scale -1);

            final zoomed = Matrix4.identity()
              ..translate(x ,y)
              ..scale(scale);
            final end = controller.value.isIdentity() ? zoomed : Matrix4.identity();
            animation = Matrix4Tween(
              begin: controller.value,
              end: end
            ).animate(CurveTween(curve: Curves.easeOut).animate(animationController));
                animationController.forward(from: 0);
            },
          child: InteractiveViewer(
            transformationController: controller,
            clipBehavior: Clip.none,
            panEnabled: false,
            scaleEnabled: false,
            child: Container(
            margin:EdgeInsets.all(5) ,
            decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black , width: 5),
                image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage("${widget.imgadrs}"),
              )
            ),
    ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        _save();
      },
        icon: Icon(Icons.download_outlined),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        splashColor: Colors.black26,
        label: Text('Download this image'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
