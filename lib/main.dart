import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  List name = [
    'Samsung S22 ',
    'Honor ',
    'Tecno Spark',
    'Huawei',
    'Redmi Note 11',
    'Iphone 13'
  ];
  int index = 0;
  List path = [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('image/samsung.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:12/256\nColor: Black\nBirth year:2022',
          style: TextStyle(color: Colors.red, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Image.asset('image/honor.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:3/32\nColor: Blue\nBirth year:2019',
          style: TextStyle(color: Colors.green, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Image.asset('image/tecno.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:12/256\nColor: pink\nBirth year:2022',
          style: TextStyle(color: Colors.blue, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Image.asset('image/huwaei.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:4/64\nColor: orange\nBirth year:2019',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Image.asset('image/redmi.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:8/128\nColor: violit\nBirth year:2022',
          style: TextStyle(color: Colors.orange, fontSize: 20),
        )
      ],
    ),
    Column(
      children: [
        Image.asset('image/iphone.jpg',fit: BoxFit.contain,),
        Text(
          'Memory:12/256\nColor: gold\nBirth year:2022',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )
      ],
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        name[index % 6],
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          path[index % 6],
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      index--;
                    });
                  },
                  child: Icon(Icons.arrow_back_ios)),
              Text('Change page: $index'),
              TextButton(
                  onPressed: () {
                    setState(() {
                      index++;
                    });
                  },
                  child: Icon(Icons.arrow_forward_ios))
            ],
          )
        ],
      ),
    );
  }
}
// List<Map<String,dynamic>> data=[
//   {
//     'imgUrl':'image/iphone.jpg',
//     'name':'samsung S22'
//   },
//   {
//     'imgUrl':'image/samsung.jpg',
//     'name':'samsung S21'
//   },
// ];