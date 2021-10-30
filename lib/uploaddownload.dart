import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(CreativeStorage());
}

class CreativeStorage extends StatelessWidget {
  const CreativeStorage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CreativeStorage(),
    );
  }
}


class CreativeStorage extends StatefulWidget {
  const CreativeStorage({Key? key}) : super(key: key);

  @override
  _CreativeStorageState createState() => _CreativeStorageState();
}

class _CreativeStorageState extends State<CreativeStorage> {
  String imageUrl;
  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    PickedFile image;

    await Permission.photos.request();

    var permissionStatus = await Permission.photos.status;

    if (permissionStatus.isGranted){
      image = await _imagePicker.getImage(source: ImageSource.gallery);
      var file = File(image.path);

      if (image != null){
        var snapshot = await _firebaseStorage.ref()
            .child('images/imageName')
            .putFile(file).onComplete;
        var downloadURl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadURl;
        });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with Permission Acess');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Storage Back-Up', style: TextStyle(fontWeight: FontWeight.bold),)),
        toolbarHeight: 120,
      ) ,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      height: MediaQuery.of(context).size.height*0.25,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_photo_alternate_rounded, color: Colors.black, size: 50,),
                          Container(
                            height: 50,
                            width: 50,
                            child: (imageUrl != null)
                                ? Image.network(imageUrl)
                                : Image.network('https://i.imgur.com/sUFH1Aq.png'),
                          ),
                          Text("Upload Files", style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    onTap: (){
                      uploadImage();
                    },
                  ),
                ),
              ] ,
            ),
          )
        ],
      ),
    );
  }
}
