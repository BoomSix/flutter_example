import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: '6666 Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text("55"),
            Text(
              '0000999999999999999999999999999999999999999999999999999999999999999999999999999999',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  inherit: false,
                  color: Colors.grey,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  decorationColor: Colors.red,
                  decoration: TextDecoration.lineThrough,
                  decorationStyle: TextDecorationStyle.wavy,
                  letterSpacing: 2, //字符间距
                  wordSpacing: 10, //单词间距
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(color: Colors.yellow)),
//                  focusedBorder: UnderlineInputBorder(),
                  icon: Icon(Icons.access_alarm), //输入框外左侧即下划线外
                  suffixIcon: Icon(Icons.pan_tool), //输入框内右侧
//                suffixText: 'suffixText',
//                prefixText: 'prefixText',
                  prefixIcon: Icon(Icons.palette), //输入框内左侧
//                  labelText: '上部提示文字',
                  contentPadding: EdgeInsets.only(bottom: 20)
//                  helperText: '底部提示文字',
//                  hintText: '请输入电话号码'
                  ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                print("------------文字提交触发（键盘按键）$value--");
              },
              onEditingComplete: () {
                print("----------------编辑完成---");
              },
              onChanged: (value) {
                print("----------------输入框中内容为:$value--");
              },
            ),
            Center(
              child: Image.asset(
                'images/dog.png',
                width: 100,
                height: 100,
              ),
            ),
            Stack(
              children: <Widget>[
                GestureDetector(
                  onDoubleTap: () {
                    print("----------------响应了:onDoubleTap--");
                  },
                  onTap: () {
                    print("----------------响应了:onTap--");
                  },
                  onLongPress: () {
                    print("----------------响应了:onLongPress--");
                  },
                  onVerticalDragDown: (value) {
                    print("----------------响应了:onVerticalDragDown--");
                  },
                  child: Image.network(
                    'https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=2b2e9cfcfd1f3a294ec5dd9cf84cd754/d0c8a786c9177f3ec073c12f7dcf3bc79f3d5648.jpg',
//                  width: 300,
                    fit: BoxFit.fitWidth,
                    height: 200,
                  ),
                ),
                //下面的覆盖上层，导致GestureDetector不响应。

//                Positioned(
//                  child: Text(
//                    'stack第二层',
//                    style: TextStyle(color: Colors.cyanAccent),
//                  ),
//                  left: 10,
//                  top: 10,
//                ),
//                // ''' $''' 之间的内，按编辑器显示的布局，即换行之类
//                Positioned(
//                  child: Text(
////                    'stack第三层' +
//                    '''
//                  aaa
//                  ddd
//                  ccc
//
//                  ''',
//                    style: TextStyle(color: Colors.red),
//                  ),
//                  left: 30,
//                  top: 30,
//                ),
//                //opacity 即透明层
//                Opacity(
//                  opacity: 0.5,
//                  child: new Container(
//                    width: 200.0,
//                    height: 220.0,
//                    decoration: new BoxDecoration(color: Colors.amber),
//                  ),
//                ),
              ],
            ),
            Row(
              // 将主轴方向上的空白区域等分，使得子控件之间的空白区域相等，
              // 两端的子控件都靠近首尾，没有间隙。
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               将主轴方向上的空白区域等分，使得子控件之间的空白区域相等，
// 两端的子控件都靠近首尾，首尾子控件的空白区域为1/2。
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//            将主轴方向上的空白区域等分，使得子控件之间的空白区域相等，包括首尾。
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              textBaseline: TextBaseline.alphabetic,
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Icon(Icons.palette),
                Icon(Icons.pan_tool),
                FlutterLogo(
                    textColor: Colors.amberAccent,
                    size: 60,
                    curve: Curves.bounceInOut),
                Text("777"),
                Text("888"),
                Text(
                  "8888",
                ),
                Text(
                  "999",
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.accessible_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
