import 'package:flutter/material.dart';

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
                      height: size.height / 14,
                      width: size.height / 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                        scale: size.height / 35,
                      ),
                      height: size.height / 14,
                      width: size.height / 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
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
                  ),
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
                        height: size.height / 12.5,
                        width: size.height / 12.5,
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
                          fontWeight: FontWeight.w700),
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
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height / 70),
                Container(
                  height: size.height / 2.75,
                  width: size.height / 4.5,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: NetworkImage(
                    //       "https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=422&q=80"),
                    // ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
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
