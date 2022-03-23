import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SolarView extends StatefulWidget {
  const SolarView({Key? key}) : super(key: key);

  @override
  _SolarViewState createState() => _SolarViewState();
}

class _SolarViewState extends State<SolarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Renewable ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Overpass'),
            ),
            Text(
              "Energy",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.yellowAccent,
                  fontFamily: 'Overpass'),
            ),
            Icon(Icons.flash_on,color: Colors.yellow,)
          ],
        ),
        backgroundColor: const Color(0xff213A50),
      ),
      body: const WebView(
        initialUrl: 'https://www.nationalgeographic.com/photography/article/picturing-crescent-dunes-solar-energy-plant',
      ),
    );
  }
}
