import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  int teamACounter = 0;
  int teamBCounter = 0;

  void _teamAIncrement(){
    setState(() {
      teamACounter += 3;
    });
  }

  void _teamBIncrement(){
    setState(() {
      teamBCounter += 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'BasketBall App',
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      body: Container(
        color: Colors.white24,
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team A',
                           style: TextStyle(
                               fontSize: 40,
                               fontWeight: FontWeight.bold,
                               color: Colors.black
                           ),
                        ),
                        const Text(
                            'Score',
                              style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        Text(
                          '$teamACounter',
                              style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_circle, size: 40,),
                          onPressed: () {
                            _teamAIncrement();
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        const Text(
                            'Score',
                              style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                         Text(
                          '$teamBCounter',
                              style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                        IconButton(
                          alignment: Alignment.bottomCenter,
                          icon: const Icon(Icons.add_circle, size: 40,),
                          onPressed: () {
                            _teamBIncrement();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: IconButton(
                  icon: const Text(
                    'Reset',
                    style: TextStyle(
                      fontSize: 25,
                      backgroundColor: Colors.teal,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: (){
                    setState(() {
                      teamACounter = 0;
                      teamBCounter = 0;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}