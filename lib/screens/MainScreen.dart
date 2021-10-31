import 'package:firebase_project/models/datamodels/restaruntModel.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class main_screen extends StatefulWidget {
  const main_screen({Key? key}) : super(key: key);

  @override
  _main_screenState createState() => _main_screenState();
}

class _main_screenState extends State<main_screen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Color(0xFFf7f7f7),
      // appBar: AppBar(
      //   title: const Text('Main Screen'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(
                        Icons.menu,
                      ),
                      height: size.height / 20,
                      width: size.height / 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 2.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/youth.png",
                        scale: size.height / 50,
                      ),
                      height: size.height / 20,
                      width: size.height / 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xfff7c748),
                        // Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 2),
                            blurRadius: 2.0,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height / 100),
                DropDownItem(),
                SizedBox(height: size.height / 200),
                Text(
                  "Food Delivery",
                  style: textTheme.headline5!.apply(
                      color: Colors.black,
                      fontWeightDelta: 3,
                      letterSpacingDelta: 0.0,
                      letterSpacingFactor: 1.0),
                ),
                SizedBox(height: size.height / 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            // keyboardType: TextInputType.datetime,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: size.height / 30,
                                color: Color(0xfffe7156),
                              ),
                              hintText: "Find for food or restaurant..",
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: size.height / 15,
                        width: size.height / 15,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(-1, 1),
                              blurRadius: 2.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.tune,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height / 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Restaurants",
                      style: TextStyle(
                          fontSize: textTheme.headline6!.fontSize,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          print("View All Button Pressed!");
                        });
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          color: Color(0xfffe7156),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height / 70),
                Container(
                  height: size.height / 2.5,
                  // width: size.height / 3.75,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: restaurantModels.length,
                      itemBuilder: (BuildContext context, int index) {
                        return RestaurantCard(
                          size: size,
                          restaurantModel: restaurantModels[index],
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  final RestaurantModel restaurantModel;

  const RestaurantCard({
    Key? key,
    required this.size,
    required this.restaurantModel,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: size.height / 2.5,
        width: size.height / 3.75,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(restaurantModel.image),
              ),
            ),
            Container(
              height: size.height / 2.5,
              width: size.height / 3.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white.withOpacity(.3),
                        ),
                        height: size.height / 20,
                        width: size.height / 8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              restaurantModel.rating.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: size.width / 70,
                            ),
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Color(0xffe3c579),
                            ),
                            Text(
                              "(50+)",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: size.width / 24,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.favorite,
                          color: kAppthemecolor,
                          size: size.width / 20,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        height: size.height / 30,
                        width: size.height / 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(.4),
                        ),
                        child: Center(
                          child: Text(
                            "AMERICAN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 50,
                      ),
                      Container(
                        height: size.height / 30,
                        width: size.height / 12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(.4),
                        ),
                        child: Center(
                          child: Text(
                            "FAST FOOD",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Text(
                    restaurantModel.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Text(
                    "Friends were here",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: Theme.of(context).textTheme.caption!.fontSize,
                      letterSpacing: 1.0,
                    ),
                  ),
                  SizedBox(
                    height: size.height / 80,
                  ),
                  Row(children: [
                    friendsImage(size.height),
                    friendsImage(size.height),
                    friendsImage(size.height),
                  ])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

friendsImage(h) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Container(
      child: Image.asset(
        "assets/images/friend.png",
        scale: h / 35,
      ),
      height: h / 25,
      width: h / 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color(0xfff7c748),
      ),
    ),
  );
}

class DropDownItem extends StatefulWidget {
  @override
  _DropDownItemState createState() => _DropDownItemState();
}

class _DropDownItemState extends State<DropDownItem> {
  String dropdownValue = "Where to Deliver?";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Deliver to'),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_drop_down, color: Color(0xfffe7156)),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Color(0xfffe7156)),
            underline: Container(
              height: 0,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Where to Deliver?',
              'Elon Musk',
              'Bill Gates',
              'Mark Zuckerberg'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
