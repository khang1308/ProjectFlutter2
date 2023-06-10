import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme:
        // ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 247, 250, 250)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 170,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'ZendVN',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100.0,
                        child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 235, 242, 243),
                                        Color.fromARGB(255, 81, 173, 201)
                                      ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(children: [
          Column(children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                height: 550.0,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) => Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(child: Text('List of Article')),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                  org(),
                                ],
                              ),
                            ),
                          ],
                        )),
              )
            ])
          ])

          // Container(
          //   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          //   child: Column(
          //     children: [
          //       Container(
          //         child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Container(
          //                 child: Text(
          //                   'List of article',
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //               ),

          //             ]),
          //       ),
          //     ],
          //   ),
          // ),
        ]));
  }
}

class org extends StatelessWidget {
  const org({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text(
            '08:AM',
            style: TextStyle(fontSize: 25),
          ),
        ),
        Container(
          width: 245,
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 235, 242, 243),
              Color.fromARGB(255, 81, 173, 201)
            ], begin: Alignment.centerRight, end: Alignment.centerLeft),
          ),
        ),
      ],
    );
  }
}
