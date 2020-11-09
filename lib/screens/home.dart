import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = [
    'Library',
    'News',
    'Jobs',
    'Resources',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            leading: FittedBox(
              fit: BoxFit.fitWidth,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Adelfox',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(titles.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        titles[index],
                        style: TextStyle(
                          color: _currentIndex == index
                              ? Colors.black
                              : Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
            actions: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    width: 120,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/bg1.png',
                    ),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 150,
                    left: 120,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ADELFOX.DESIGN',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(175, 233, 211, 1),
                        ),
                      ),
                      Text(
                        'Actions for \nAccessibily\nin Design',
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(34, 52, 68, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 13),
                        child: Text(
                          'when it comes to tech,truth is,',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          'fair isnt enough',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(187, 227, 228, 1),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 37,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(22, 92, 243, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Get the App',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 37,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_downward,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
