import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: 'page1'),
                //     builder: (context) => Page1(),
                //   ),
                // ModalRoute.withName('page2'));
                //Removendo todas as paginas, exceto a primeira
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: RouteSettings(name: 'page1'),
                      builder: (context) => Page1(),
                    ),
                    // (route) => route.isFirst); //Removendo todas as paginas, exceto a primeira
                    (route) => false); //Removendo todas as paginas
              },
              child: Text('Page 1 via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamedAndRemoveUntil('/page1', ModalRoute.withName('/page2'));
                Navigator.of(context).pushNamedAndRemoveUntil('/page1', ModalRoute.withName(Page2.routeName));
              },
              child: Text('Page 1 via pushNamedAndRemoveUntil'),
            ),
          ],
        ),
      ),
    );
  }
}
