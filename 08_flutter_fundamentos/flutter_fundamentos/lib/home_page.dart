import 'package:flutter/material.dart';

class HomePageStateless extends StatelessWidget {
  final String texto = 'Estou no StateLess Widget';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(
            onPressed: () {
              //texto = 'Alterei o texto do StateLess Widget';
            },
            child: Text('AlterarTexto'),
          ),
        ],
      ),
    );
  }
}
