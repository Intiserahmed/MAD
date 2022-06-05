import 'package:flutter/material.dart';
import '../../constants.dart';
import 'grid_card.dart';

class SensorScreenBody extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<SensorScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.home_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "ENTRY",
                  statusOn: "OPEN",
                  statusOff: "LOCKED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "LIGHTS",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.opacity,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "LEAKS",
                  statusOn: "DETECTED",
                  statusOff: "NOT DETECTED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.thermostat_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "THERMOSTAT",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
