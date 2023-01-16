import 'package:flutter/material.dart';

import '../constants.dart';

class BottomSheetScreen extends StatelessWidget {
  BottomSheetScreen({required this.indexed, super.key});
  late int indexed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  15,
                ),
                topRight: Radius.circular(
                  15,
                ),
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Complete',
                  style: TextStyle(
                    color: khomecolor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.check_circle,
                  color: Color.fromARGB(255, 84, 214, 182),
                  size: 90,
                ),
                Text(
                  PayAction[indexed] == 'Pay' ? '\$45' : '\$5200',
                  style: TextStyle(
                    color: PayAction[indexed] == 'Pay'
                        ? Colors.red
                        : Colors.greenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  PayAction[indexed] == 'Pay' ? 'Paid To:' : 'Received From:',
                  style: const TextStyle(
                    color: khomecolor,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        right: 10,
                      ),
                      constraints: const BoxConstraints.tightFor(
                        width: 45,
                        height: 45,
                      ),
                      decoration: BoxDecoration(
                        color: ksecondcolor,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'J',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Jesse',
                          style: TextStyle(
                            color: khomecolor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'jesse.mailbox.mail@gmail.com',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Transaction ID',
                      style: TextStyle(
                        color: khomecolor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1234 5678 9012 4567',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                RawMaterialButton(
                  constraints: const BoxConstraints.tightFor(
                    width: 300,
                    height: 40,
                  ),
                  fillColor: khomecolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      7,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Share Recipt',
                  style: TextStyle(
                    color: khomecolor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
                child: const Icon(
                  Icons.paid_rounded,
                  color: Color.fromARGB(66, 92, 102, 220),
                  size: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                  right: 10,
                ),
                child: const Icon(
                  Icons.paid_rounded,
                  color: Color.fromARGB(66, 92, 102, 220),
                  size: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
