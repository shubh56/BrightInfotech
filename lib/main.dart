import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Padding(
        padding: EdgeInsets.only(top: mediaQuery.size.height * 0.04),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: mediaQuery.size.height * 0.06,
                    width: mediaQuery.size.width * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(mediaQuery.size.height * 0.015),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: mediaQuery.size.height * 0.03,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Search Food',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: mediaQuery.size.height * 0.03,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: mediaQuery.size.height * 0.06,
                    width: mediaQuery.size.width * 0.09,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(mediaQuery.size.height * 0.015),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            mediaQuery.size.height * 0.015),
                        child: Image.asset('assets/images/profilepic.png',
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: mediaQuery.size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: mediaQuery.size.height * 0.07,
                  width: mediaQuery.size.width * 0.6,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius:
                        BorderRadius.circular(mediaQuery.size.height * 0.02),
                  ),
                  child: TextField(
                    cursorColor: Colors.black,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(
                            mediaQuery.size.height * 0.01),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(
                            mediaQuery.size.height * 0.01),
                      ),
                      hintText: 'Spice Food',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: mediaQuery.size.height * 0.02,
                      ),
                      icon: Padding(
                        padding: EdgeInsets.only(
                            left: mediaQuery.size.height * 0.018),
                        child: Icon(Icons.search_rounded,
                            size: mediaQuery.size.height * 0.03),
                      ),
                      iconColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: mediaQuery.size.height * 0.03,
                  width: mediaQuery.size.width * 0.015,
                ),
                Container(
                  height: mediaQuery.size.height * 0.06,
                  width: mediaQuery.size.width * 0.13,
                  child: Icon(
                    Icons.tune,
                    size: mediaQuery.size.height * 0.03,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellowAccent.shade700,
                    borderRadius:
                        BorderRadius.circular(mediaQuery.size.height * 0.015),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
                width: double.infinity, height: mediaQuery.size.height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Found \n80 results',
                      style: TextStyle(
                        fontSize: mediaQuery.size.height * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const FoodItemCard(
                      imagePath: 'assets/images/onisandwich.png',
                      dishName: 'Oni Sandwich',
                      dishDesc: 'Spicy chicken sandwich',
                      kcal: '69',
                      cost: '6.72',
                      height: 0.15,
                      width: 0.25,
                    ),
                    const FoodItemCard(
                      imagePath: 'assets/images/eggpasta.png',
                      dishName: 'Egg Pasta',
                      dishDesc: 'Spicy chicken pasta',
                      kcal: '78',
                      cost: '9.80',
                      height: 0.15,
                      width: 0.25,
                    ),
                  ],
                ),
                const Column(
                  children: [
                    FoodItemCard(
                      imagePath: 'assets/images/DanNoodles.png',
                      dishName: 'Dan Noodles',
                      dishDesc: 'Spicy fruti mixed',
                      kcal: '120',
                      cost: '8.86',
                      height: 0.15,
                      width: 0.25,
                    ),
                    FoodItemCard(
                      imagePath: 'assets/images/chickendimsum.png',
                      dishName: 'Chicken Dimsum',
                      dishDesc: 'Spicy chicken dimsum',
                      kcal: '65',
                      cost: '6.99',
                      height: 0.15,
                      width: 0.35,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String imagePath;
  final String dishName;
  final String dishDesc;
  final String kcal;
  final String cost;
  final double height;
  final double width;
  const FoodItemCard({
    super.key,
    required this.imagePath,
    required this.dishName,
    required this.dishDesc,
    required this.kcal,
    required this.cost,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          width: mediaQuery.size.width * 0.35,
          height: mediaQuery.size.height * 0.25,
          margin: EdgeInsets.only(
            top: mediaQuery.size.height * 0.06,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              mediaQuery.size.height * 0.03,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: mediaQuery.size.height * 0.11),
            child: Column(
              children: [
                Text(
                  dishName,
                  style: TextStyle(
                    fontSize: mediaQuery.size.height * 0.02,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: mediaQuery.size.height * 0.005,
                ),
                Text(
                  dishDesc,
                  style: TextStyle(
                    fontSize: mediaQuery.size.height * 0.015,
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: mediaQuery.size.height * 0.005,
                ),
                Text(
                  '🔥 $kcal calories',
                  style: TextStyle(
                    fontSize: mediaQuery.size.height * 0.015,
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: mediaQuery.size.height * 0.005,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.money_dollar,
                      color: Colors.yellow,
                      size: mediaQuery.size.height * 0.02,
                    ),
                    Text(
                      cost,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: mediaQuery.size.height * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: mediaQuery.size.height * height,
          width: mediaQuery.size.width * width,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.transparent,
            ),
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imagePath,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
