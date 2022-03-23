import 'package:flutter/material.dart';
import 'package:renewable_power/screens/biomass_view.dart';
import 'package:renewable_power/screens/solar_view.dart';
import 'package:renewable_power/screens/water_view.dart';
import 'package:renewable_power/screens/wind_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

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
                  fontSize: 18, color: Colors.white, fontFamily: 'Overpass'),
            ),
            Text(
              "Energy",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.yellowAccent,
                  fontFamily: 'Overpass'),
            ),
            Icon(
              Icons.flash_on,
              color: Colors.yellow,
            )
          ],
        ),
        backgroundColor: const Color(0xff213A50),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff213A50), Color(0xff071930)]),
            ),
          ),
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WindView()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    'https://www.vaisala.com/sites/default/files/images/LIFT-renewable%20energy%20wind%20mills-1600x900.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SolarView()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    'https://otakegypt.com/wp-content/uploads/2020/02/mitei-future-of-solar.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WaterView()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    'https://www.innovationnewsnetwork.com/wp-content/uploads/2020/08/Hydropower.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BiomassView()));
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.network(
                    'https://www.eia.gov/energyexplained/biomass/images/biomass-types.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
