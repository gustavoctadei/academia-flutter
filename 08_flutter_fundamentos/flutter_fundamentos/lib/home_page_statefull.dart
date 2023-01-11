import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/home_page.dart';

class HomePageStatefull extends StatefulWidget {

  HomePageStatefull() {
    print('HomePageStatefull constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('createState');
    return _HomePageStatefullState();
  }
}

class _HomePageStatefullState extends State<HomePageStatefull> {
  String texto = 'Estou no Statefull Widget';

  _HomePageStatefullState() {
    print('_HomePageStatefullState constructor');
  }  

  @override
  void initState() {
    super.initState();
    texto = 'Texto alterado pelo initState';
    print('Inicio do initState');
    
    //Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageStateless(),)); //Erro, não é possível navegar pelo initState

    // Funciona, mas não é boa prática
    //Future.delayed(Duration(seconds: 1), () {
    //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageStateless(),));
    //});

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print('addPostFrameCallback');
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => HomePageStateless(),
      ));
    });

    print('Fim do initState');
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('build');

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = 'Alterei o texto do Statefull Widget';
                });
              },
              child: Text('AlterarTexto'),
            ),
          ],
        ),
      ),
    );
  }
}
