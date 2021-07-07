import 'package:flutter/material.dart';
import 'pixabay-data.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    ImageData.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Animasi'),
      ),
      body: ListView.separated(
          itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail',
                      arguments: ImageData.pixabay[index]);
                },
                child: ListTile(
                  leading: Hero(
                      tag: ImageData.pixabay[index].id,
                      child: Image.network(ImageData.pixabay[index].imageLarge),
                      transitionOnUserGestures: true),
                  title: Text(ImageData.pixabay[index].title),
                  subtitle: Text(ImageData.pixabay[index].author),
                ),
              ),
          separatorBuilder: (context, position) {
            return Divider();
          },
          itemCount: ImageData.pixabay.length),
    );
  }
}

class DetailPage extends StatelessWidget {
  final pixabay;
  DetailPage(this.pixabay);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail'),
        ),
        body: Center(
          child: Hero(
            tag: pixabay.id,
            child: Image.network(pixabay.imageLarge),
          ),
        ));
  }
}
