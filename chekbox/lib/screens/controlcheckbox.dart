import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlCheckbox extends StatefulWidget {
  const ControlCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<ControlCheckbox> createState() => _ControlCheckboxState();
}

class _ControlCheckboxState extends State<ControlCheckbox> {
  int? a;
  bool d = false;
  bool i = false;
  bool c = false;
  double s = 0;
  int r1 = 30000;
  int r2 = 40000;
  int r3 = 50000;
  double valueSlider = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('images/pizza.jpg'),
              height: 200,
              width: 200,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('Sizi'),
                        RadioListTile(
                          title: Text('Small'),
                          value: r1,
                          groupValue: a,
                          onChanged: (int? r1) {
                            setState(() {
                              a = r1!;
        
                              if (d || i || c) {
                                d = false;
                                i = false;
                                c = false;
                              }
                              s = 30000;
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text('Medium'),
                          value: r2,
                          groupValue: a,
                          onChanged: (int? r2) {
                            setState(() {
                              a = r2!;
        
                              if (d || i || c) {
                                d = false;
                                i = false;
                                c = false;
                              }
                              s = 40000;
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text('Large'),
                          value: r3,
                          groupValue: a,
                          onChanged: (int? r3) {
                            setState(
                              () {
                                a = r3!;
        
                                if (d || i || c) {
                                  d = false;
                                  i = false;
                                  c = false;
                                }
                                s = 50000;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text('Extra'),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Extracheese'),
                          value: d,
                          onChanged: ((value) {
                            setState(() {
                              d = value!;
                              if (value) {
                                s += 5000;
                              } else {
                                s -= 5000;
                              }
                            });
                          }),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('Onions'),
                          value: i,
                          onChanged: ((value) {
                            setState(() {
                              i = value!;
                              if (value) {
                                s += 7000;
                              } else {
                                s -= 7000;
                              }
                            });
                          }),
                        ),
                        CheckboxListTile(
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Text('ketchup'),
                          value: c,
                          onChanged: ((value) {
                            setState(() {
                              c = value!;
                              if (value) {
                                s += 12000;
                              } else {
                                s -= 12000;
                              }
                            });
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'The number of pizza\n\n',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Center(
                child: Slider(
                  max: 5,
                  min: 1,
                  divisions: 4,
                  label: (valueSlider.round()).toString(),
                  value: valueSlider,
                  onChanged: (value) {
                    setState(
                      () {
                        valueSlider = value;
                      },
                    );
                  },
                ),
              ),
            ),
            
            SizedBox(
              height: 80,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total Sum: ${s * (valueSlider.round()).toInt()}',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
