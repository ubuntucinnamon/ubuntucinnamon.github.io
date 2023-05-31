import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

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
        appBar: AppBar(title: Text("Ubuntu Cinnamon")),
        body: Center(
            child: YaruPage(children: [
              Text(
                  "As our website undergoes transfer to Canonical infrastructure, use *this* site for primary information.",
                  textAlign: TextAlign.center),
              Text(
                  "For 22.04 'Jammy Jellyfish' LTS and point releases, refer to our sourceforge."),
              Text(
                  "For 23.04 'Lunar Lobster', refer to the Ubuntu CD Image mirror."),
              TextButton(onPressed: () async {
                launchUrl(
                    Uri.parse("https://sourceforge.net/projects/ubuntu-cinnamon-remix/files/"));
              }, child: Text('Sourceforge Link for 22.04.*')),
              TextButton(onPressed: () async {
                launchUrl(
                    Uri.parse("http://cdimage.ubuntu.com/ubuntucinnamon/releases/lunar/release/"));
              }, child: Text("Ubuntu CD Image Miror Link for 23.04"))
            ],
            )
        )
    );
  }
}
