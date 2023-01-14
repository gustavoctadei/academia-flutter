import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_column,
  media_query,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
              // icon: Icon(Icons.restaurant_menu),
              tooltip: 'Selecione um Item do Menu',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.rows_column:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;
                  case PopupMenuPages.media_query:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_column,
                    child: Text('Rows & Columns'),
                  ),
                  PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: Text('MediaQuery'),
                  ),
                ];
              })
        ],
      ),
      body: Container(),
    );
  }
}
