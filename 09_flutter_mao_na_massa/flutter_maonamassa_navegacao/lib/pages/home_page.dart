import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: '/detalhe',
                      // arguments: 'Parametro pelo PageRoute',
                    ),
                    builder: (_) => DetalhePage(
                      parametro: 'Parametro pelo PageRoute',
                    ),
                  ),
                );
              },
              child: Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                print('Antes de navegar para a pagina Detalhe2');
                final retorno = await Navigator.of(context).pushNamed<String>('/detalhe2');
                print('Navegou para a pagina Detalhe2');
                print('O retorno de detalhe2 é $retorno');
              },
              child: const Text('Ir para Detalhe2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
