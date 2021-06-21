import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'struct.dart';
import 'package:hivpro/struct.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final path = await path_provider.getApplicationDocumentsDirectory();
  Hive
    ..init(path.path)
    ..registerAdapter(statusAdapter())
    ..registerAdapter(AnimeAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homar(),
    );
  }
}

class Homar extends StatefulWidget {
  @override
  _HomarState createState() => _HomarState();
}

class _HomarState extends State<Homar> {
  List<Widget> results(List<Box> boxes) {
    List<Widget> output = [];
    output.add(MovieCard());
    return output;
  }

  Widget temp() {
    return FutureBuilder(
      future: Future.wait([
        Hive.openBox('boxName'),
      ]),
      builder: (context, _) {
        return Container(
          color: Colors.white.withOpacity(0),
          child: Column(
            children: results([]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('hhhh'),
      ),
      backgroundColor: Colors.white,
      body: temp(),
    ));
  }
}

class MovieCard extends StatelessWidget {
  // final Box<Anime> box;

  @override
  Widget build(BuildContext context) {
    final Movie mov = Movie(status.watching); //box.getAt(index);
    final List<Color> colors = [
      Colors.red.shade600.withOpacity(0.85),
      Colors.yellow.shade700.withOpacity(0.85),
      Colors.green.shade600.withOpacity(0.85)
    ];
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 5),
      color: colors[mov.type.index],
      child: Text('bbb'),
    );
  }
}
