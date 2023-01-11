import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 250,
              //color: Colors.red,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/paisagem.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Paisagem',
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.6),
                    fontSize: 20,
                  ),
                ),
              ),
              // child: Image.asset(
              //   'assets/images/paisagem.jpg',
              //   //width: 40, //O Container está definindo
              //   //height: 40, //O Container está definindo
              //   // fit: BoxFit.fill,
              //   // fit: BoxFit.contain,
              //   fit: BoxFit.cover,
              //   // fit: BoxFit.fitHeight,
              //   // fit: BoxFit.fitWidth,
              //   // fit: BoxFit.scaleDown,
              // ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Image.network(
                'https://docs.flutter.dev/assets/images/flutter-logo-sharing.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
