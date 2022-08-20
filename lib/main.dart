import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bmiCal(),
    ),
  );
}

class bmiCal extends StatefulWidget {
  const bmiCal({Key? key}) : super(key: key);

  @override
  State<bmiCal> createState() => _bmiCalState();
}

class _bmiCalState extends State<bmiCal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff090e21),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xff090e21),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.female_sharp,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                                text: "\n\n Female",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                )),
                          ],
                        ),
                      ),
                    )), //female
                SizedBox(width: 20),
                Container(
                    margin: EdgeInsets.only(top: 14),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xff1d1e33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.male,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                                text: "\n\n Male",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                )),
                          ],
                        ),
                      ),
                    )), // male
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff1d1e33),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                          text: "                   HEIGHT\n\n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      WidgetSpan(
                        child: Slider(
                          value: 200,
                          onChanged: (val) {
                            setState(() {});
                          },
                          min: 0,
                          max: 400,
                          thumbColor: const Color(0xffeb1555),
                          activeColor: Colors.deepPurple.withOpacity(0.2),
                          inactiveColor: Colors.deepPurple.withOpacity(0.2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(top: 10),
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Align(
                    alignment: Alignment(3, 0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                              text: "\n\n          Weight",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          const TextSpan(
                            text: "\n\n         60",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          WidgetSpan(
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.end,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(width: 34),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff4c4f5e),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xffffffff),
                                      size: 25,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff6e6f7a),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Color(0xfff67fa4),
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ), //female
                      // male
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  alignment: Alignment(0, 0),
                  margin: const EdgeInsets.only(top: 10),
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xff1d1e33),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: "\n\n               Age",
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        const TextSpan(
                          text: "\n\n          23",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        WidgetSpan(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff4c4f5e),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff6e6f7a),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xfff67fa4),
                                    size: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ), //female
                    // male
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffeb1555),
              ),
              child: const Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
