import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WaterView extends StatefulWidget {
  const WaterView({Key? key}) : super(key: key);

  @override
  _WaterViewState createState() => _WaterViewState();
}

class _WaterViewState extends State<WaterView> {
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
        initialUrl: 'https://www.usgs.gov/special-topics/water-science-school/science/hydroelectric-power-water-use#:~:text=Hydropower%2C%20or%20hydroenergy%2C%20is%20a,create%20electricity%20in%20hydropower%20plants.',
      ),
    );
  }
}
