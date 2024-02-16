import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'classifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '댕댕이 전투력 측정기'),
      routes: {
        '/classifier': (context) => Classifier()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  void _uploadImage() async {
    final xfileImage = await _picker.pickImage(source: ImageSource.gallery);
    if(xfileImage != null) {
      setState(() {
        _image = XFile(xfileImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '댕댕이 이미지를 넣어주세요!!',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: _buildPhotoArea()
            ),

        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/classifier');
          },
          child: Text('분석하기',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _uploadImage,
        tooltip: 'Upload Image',
        child: const Icon(Icons.camera),
      ),
    );
  }

  Widget _buildPhotoArea() {
    return _image != null ? Container(width: 200, height: 300, child: Image.file(File(_image?.path ?? ''))) : Container(width: 200, height: 300, color: Colors.grey
    );
  }
}

  // Widget _buildPhotoArea() {
  //   return _image != null
  //       ? Container(width: 200, height: 300, child: Image.file(File(_image?.path ?? '')),)
  //       : Container(width: 200, height: 300, child: Image.asset('assets/dog.png'),
  //   );
  // }
