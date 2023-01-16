import 'package:flutter/material.dart';

import '../constants.dart';
import 'bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String money = '\$15, 245';
  String nmoney = '\$15, 245';
  List<String> newmoney = amount;
  Icon visible = const Icon(
    Icons.visibility_off,
    color: Colors.white70,
  );
  Icon invisible = const Icon(
    Icons.visibility,
    color: Colors.white70,
  );

  @override
  Widget build(BuildContext context) {
    getPayAction() {
      // ignore: non_constant_identifier_names
      List<Column> PayActionList = [];
      for (int i = 0; i < PayAction.length; i++) {
        var newItem = Column(
          children: [
            RawMaterialButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((context) => BottomSheetScreen(
                        indexed: i,
                      )),
                );
              },
              fillColor: khomecolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              constraints: const BoxConstraints.tightFor(
                height: 55,
                width: 55,
              ),
              child: Center(child: PayActionIcon[i]),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              PayAction[i],
              style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
            ),
          ],
        );
        PayActionList.add(newItem);
      }
      return GridView(
        padding: const EdgeInsets.all(20),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 5,
          mainAxisExtent: 75,
        ),
        children: PayActionList,
      );
    }

    getTransaction() {
      List<Container> transactions = [];
      for (int i = 0; i < transaction.length; i++) {
        var newItem = Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: ListTile(
            trailing: Text(
              money == nmoney ? newmoney[i] : '*******',
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(
                  255,
                  7,
                  7,
                  108,
                ),
              ),
            ),
            leading: NewWidgetContainer(
              icons: PayActionIcon[i],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      transaction[i],
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(
                          255,
                          7,
                          7,
                          108,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    date[i],
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
        transactions.add(newItem);
      }
      return ListView(
        padding: const EdgeInsets.only(
          bottom: 1,
        ),
        physics: const BouncingScrollPhysics(),
        itemExtent: 65,
        children: transactions,
      );
    }

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          bottom: 28,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: const BoxDecoration(
                    color: khomecolor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        20,
                      ),
                      bottomRight: Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.space_dashboard,
                            color: Colors.white,
                            size: 18,
                          ),
                          Icon(
                            Icons.notifications_active,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 3),
                        child: Text(
                          'Welcome back!',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w100,
                              color: Colors.white60),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Comrade Jesse',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(247, 239, 243, 246),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Current Balance',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.white60),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          children: [
                            Text(
                              money,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(247, 239, 243, 246),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  money = '******';
                                  //newmoney = nill;
                                  visible = invisible;
                                });
                              },
                              onTapCancel: () {
                                setState(() {
                                  money = nmoney;
                                  newmoney = amount;
                                  visible = const Icon(
                                    Icons.visibility,
                                    color: Colors.white70,
                                  );
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 40,
                                ),
                                child: visible,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        'This is a dummy bank account created by me, myself and I, for leisure and for practice, do well to check our fixed rates, for online transactions.',
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                            color: Colors.white60),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 80,
                    bottom: 50,
                    top: 30,
                  ),
                  child: const Icon(
                    Icons.paid_rounded,
                    color: Colors.white10,
                    size: 90,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 238,
                    top: 50,
                  ),
                  child: const Icon(
                    Icons.paid_rounded,
                    color: Colors.white10,
                    size: 130,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 190,
              child: getPayAction(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    bottom: 18,
                    top: 5,
                  ),
                  child: Text(
                    'Recent Transactionn',
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          7,
                          7,
                          108,
                        ),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: getTransaction(),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NewWidgetContainer extends StatelessWidget {
  NewWidgetContainer({
    required this.icons,
    super.key,
  });
  late Icon icons;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 43,
          height: 43,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: ksecondcolor),
          child: Center(
            child: icons,
          ),
        ),
      ],
    );
  }
}
