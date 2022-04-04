import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            title: Text('Ubuntu Cinnamon'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                color: YaruColors.porcelain,
                child: const Text('Introducing Ubuntu Cinnamon Remix', style: TextStyle(color: YaruColors.textGrey)),
                height: 100,
              ),
              Container(
                color: Color(0xFFDD682A),
                child: const Text('What is Ubuntu Cinnamon Remix?', style: TextStyle(color: YaruColors.textGrey)),
                height: 50,
              ),
              Container(
                color: YaruColors.porcelain,
                child: const Text('Keep everything simple', style: TextStyle(color: YaruColors.textGrey)),
                height: 100
              ),
              Container(
                  color: Colors.white,
                  child: const Text('Personalization', style: TextStyle(color: YaruColors.textGrey)),
                  height: 100
              ),
              Container(
                  color: YaruColors.porcelain,
                  child: const Text('Cinnamon Spices', style: TextStyle(color: YaruColors.textGrey)),
                  height: 100
              ),
              Container(
                  color: Colors.white,
                  child: const Text('Technology we use, featured in, etc.', style: TextStyle(color: YaruColors.textGrey)),
                  height: 100
              ),
              Container(
                  color: YaruColors.disabledGreyDark,
                  child: const Text('Know More'),
                  height: 200
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Text('Bottom app bar'),
      ),
    );
  }
}
