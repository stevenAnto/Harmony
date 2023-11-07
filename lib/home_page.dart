import 'package:cursos_boton_mas/courses.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Curso> cursos = Curso.samples;
  List<String> labelCurso = [];
  void addLabelCurso() {
    _incrementCounter();
    labelCurso.insert(0, cursos[_counter].label);
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if (_counter < cursos.length - 1) {
        _counter++;
        print(_counter);
      } else {
        print('entro else');
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.undo_outlined),
          onPressed: () {},
        ),
        title: Text('Cursos'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.cached)),
        ],
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: ListView.builder(
          itemCount: labelCurso.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Icon(Icons.error_outline),
              title: Text(labelCurso[index]),
            );
          }),
      /* ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.error_outline),
              title: Text(cursos[_counter].label),
            )
          ]
          ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: addLabelCurso,
        //onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(
          Icons.add_circle_outline,
          size: 43,
        ),
        mini: false,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
