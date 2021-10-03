// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Домашнее задание 3', // заголовок браузерной вкладки в web-версии
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Домашнее задание 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/svg/star.svg';
    final Widget svgIcon = SvgPicture.asset(
        assetName,
        color: Colors.red,
        semanticsLabel: 'A red vest',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Text('text $i', style: TextStyle(fontSize: 16.0),),
                              svgIcon,
                            ],
                          ),
                        )
                    );
                  },
                );
              }).toList(),
            ),
            // Image.asset('assets/images/banner.jpg',
            //   width: 200,
            //   height: 100,
            // ),
            // Image.network('https://bipbap.ru/wp-content/uploads/2017/05/Krasivaya-priroda.jpg'),
            // Image.network('https://klike.net/uploads/posts/2018-12/1543995567_1.jpg'),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('Default text',
            //       style: TextStyle(
            //         fontSize: 20.0,
            //       ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('Comfortaa text',
            //     style: TextStyle(
            //       fontFamily: 'Comfortaa',
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),
            // Text.rich(
            //     TextSpan(
            //       style: TextStyle(color: Colors.green),
            //       children: [
            //         TextSpan(text: 'Bart'),
            //         TextSpan(
            //             text: ' Simpson',
            //             style: TextStyle(
            //               color: Colors.red,
            //               fontWeight: FontWeight.w700,
            //             ),
            //         ),
            //       ],
            //     ),
            // ),
            // Container(
            //   height: 300.0,
            //   padding: EdgeInsets.all(20.0),
            //   constraints: BoxConstraints(
            //     maxWidth: 200,
            //   ),
            //   decoration: BoxDecoration(
            //     color: Colors.black,
            //     image: DecorationImage(
            //       fit: BoxFit.contain,
            //       image: NetworkImage('https://klike.net/uploads/posts/2018-12/1543995567_1.jpg'),
            //     ),
            //   ),
            // ),
            // ConstrainedBox(
            //     constraints: BoxConstraints(
            //       maxWidth: 200,
            //     ),
            //   child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            // ),
            // SizedBox(
            //   width: 100,
            //   height: 25,
            //   child:  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            // ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
