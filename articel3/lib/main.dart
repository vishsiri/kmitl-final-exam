import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const SampengCalculator());
}

class SampengCalculator extends StatelessWidget {
  const SampengCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sampeng Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SampengCalculatorPage(),
    );
  }
}

class SampengCalculatorPage extends StatefulWidget {
  const SampengCalculatorPage({Key? key}) : super(key: key);

  @override
  State<SampengCalculatorPage> createState() => _SampengCalculatorPageState();
}

class _SampengCalculatorPageState extends State<SampengCalculatorPage> {
  var supply = 0;
  var totalCalculate = 0;
  var perUnit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Sampeng Calculator',
            style: GoogleFonts.kanit(),
          ),
        ),
        body: Column(
          children: [
            Card(
              color: Colors.white,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text(
                    'โซลูชั่นของคนของชอบ "สำเพ็ง"',
                    style: GoogleFonts.kanit(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            //Input Text
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Column(children: [
                    Text(
                      'จำนวนของที่ต้องการซื้อ ( ชิ้น )',
                      style: GoogleFonts.kanit(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        hintText: 'จำนวน ( ชิ้น )',
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          supply = int.parse(value);
                        });
                      },
                    ),
                  ]),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Center(
                  child: Text(
                    'ราคาของต่อชิ้น : ฿$perUnit',
                    style: GoogleFonts.kanit(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(children: [
                  Text(
                    "ราคาของทั้งหมด",
                    style: GoogleFonts.kanit(fontSize: 20),
                  ),
                  Text(
                    '$totalCalculate บาท',
                    style: GoogleFonts.kanit(
                      fontSize: 20,
                    ),
                  ),
                ]),
              ),
            ),
            //Calculate Button
            Card(
              color: Colors.white,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(children: [
                  // ignore: deprecated_member_use
                  RaisedButton(
                    child: Text(
                      'คำนวณ',
                      style: GoogleFonts.kanit(fontSize: 20),
                    ),
                    onPressed: () {
                      calculateTotal();
                    },
                  ),
                ]),
              ),
            ),
          ],
        ));
  }

  void calculateTotal() {
    setState(() {
      if (supply == 1) {
        perUnit = 100;
        totalCalculate = supply * perUnit;
      } else if (supply == 2) {
        perUnit = 95;
        totalCalculate = supply * perUnit;
      } else if (supply == 3) {
        perUnit = 90;
        totalCalculate = supply * perUnit;
      } else if (supply >= 4) {
        perUnit = 85;
        totalCalculate = supply * perUnit;
      } else {
        perUnit = 0;
        totalCalculate = supply * perUnit;
      }
    });
  }
}
