import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Light on off",
      home: LightOnOff(),
    );
  }
}

class LightOnOff extends StatefulWidget {
  const LightOnOff({Key? key}) : super(key: key);

  @override
  State<LightOnOff> createState() => _LightOnOffState();
}

class _LightOnOffState extends State<LightOnOff> {
  var imageLink =
      "https://cdn.discordapp.com/attachments/874271108885524562/977925381891948684/light_off.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("App. On-Off"),
        ),
        body: Column(
          children: [
            Card(
              color: Colors.white,
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      imageLink =
                          "https://cdn.discordapp.com/attachments/874271108885524562/977925382131036210/light_on.png";
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "On",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      imageLink =
                          "https://cdn.discordapp.com/attachments/874271108885524562/977925381891948684/light_off.png";
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Off",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.network(imageLink),
              ),
            ),
          ],
        ));
  }
}
