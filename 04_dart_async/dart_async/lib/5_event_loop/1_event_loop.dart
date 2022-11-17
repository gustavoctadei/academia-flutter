import 'dart:async';

void main() {

  print('Inicio Main');
  
  scheduleMicrotask(() => print('Microtask #1'));

  print(DateTime.now());
  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #1 delayed');
  });
  Future(() {
    // print('Future #2');
    var i = 0;
    while(i < 2000000) {
      i++;
    }
  });
  Future(() => print('Future #3'));
  
  scheduleMicrotask(() => print('Microtask #2'));

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