import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: 'page4'),
                //     builder: (context) => Page4(),
                //   ),
                // );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page4'),
                    builder: (context) => Page4(),
                  ),
                );
              },
              child: Text('Page 4 via Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Page 3 via Named'),
            ),
          ],
        ),
      ),
    );
  }
}
