import 'dart:async';

Future<void> main() async {

  print('Inicio Main');
  
  scheduleMicrotask(() => print('Microtask #1'));

  await Future.delayed(Duration(seconds: 1), () => print('Future #1 delayed'));
  Future(() {
    var i = 0;
    while(i < 200000) {
      i++;
    }
    print('Future #2');
  });
  scheduleMicrotask(() => print('Microtask #2'));
  
  Future(() => print('Future #3'));

  print('Fim Main');

}

/**
 * Event
 * Future.delayed
 * Future #2
 * Future #3
 */

/**
 * MicroTask
 * Main
 * Microtask 1
 * Microtask 2
 */