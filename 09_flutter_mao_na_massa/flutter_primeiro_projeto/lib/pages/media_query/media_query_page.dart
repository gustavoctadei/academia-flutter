import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    // mediaQuery.removePadding;
    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print('Orientacao ${mediaQuery.orientation}');
    print('Padding Top ${mediaQuery.padding.top}');

    var appBar = AppBar(
        title: const Text('MediaQuery'),
      );

    final statusBar = mediaQuery.padding.top;
    // final appBarSize = appBar.preferredSize.height; //Pegar o tamanho da AppBar caso não seja default
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    // print('Tamanho AppBarDefault ${kToolbarHeight}');
    print('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width * .5,
              height: heightBody * .5,
            ),
            Container(
              color: Colors.blue,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
