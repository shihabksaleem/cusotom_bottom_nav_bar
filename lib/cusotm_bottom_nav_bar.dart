import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;
  TextStyle lableStyle = TextStyle(fontSize: 11, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          height: 95,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            selectedIndex = 0;
                            setState(() {});
                          },
                          icon:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: selectedIndex == 0
                                        ? Colors.grey.withOpacity(1)
                                        : Colors.grey.withOpacity(.1),
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        end: Alignment.centerRight,
                                        colors: [Colors.red, Colors.yellow])),
                                child: Icon(Icons.home,
                                    color: selectedIndex == 0
                                        ? Colors.white
                                        : Colors.black)),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Home",
                                style: lableStyle.copyWith(
                                    color: selectedIndex == 0
                                        ? Colors.red
                                        : Colors.black)),
                          ])),
                      IconButton(
                          onPressed: () {
                            selectedIndex = 1;
                            setState(() {});
                          },
                          icon:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: selectedIndex == 1
                                        ? Colors.grey.withOpacity(1)
                                        : Colors.grey.withOpacity(.1),
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        end: Alignment.centerRight,
                                        colors: [Colors.red, Colors.yellow])),
                                child: Icon(Icons.receipt_long_sharp,
                                    color: selectedIndex == 1
                                        ? Colors.white
                                        : Colors.black)),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Financial plan",
                                style: lableStyle.copyWith(
                                    color: selectedIndex == 1
                                        ? Colors.red
                                        : Colors.black)),
                          ])),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * .2),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            selectedIndex = 2;
                            setState(() {});
                          },
                          icon:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: selectedIndex == 2
                                        ? Colors.grey.withOpacity(1)
                                        : Colors.grey.withOpacity(.1),
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        end: Alignment.centerRight,
                                        colors: [Colors.red, Colors.yellow])),
                                child: Icon(Icons.groups_2_outlined,
                                    color: selectedIndex == 2
                                        ? Colors.white
                                        : Colors.black)),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Advisory",
                                style: lableStyle.copyWith(
                                    color: selectedIndex == 2
                                        ? Colors.red
                                        : Colors.black)),
                          ])),
                      IconButton(
                          onPressed: () {
                            selectedIndex = 3;
                            setState(() {});
                          },
                          icon:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: selectedIndex == 3
                                        ? Colors.grey.withOpacity(1)
                                        : Colors.grey.withOpacity(.1),
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        end: Alignment.centerRight,
                                        colors: [Colors.red, Colors.yellow])),
                                child: Icon(
                                    Icons.screen_search_desktop_outlined,
                                    color: selectedIndex == 3
                                        ? Colors.white
                                        : Colors.black)),
                            SizedBox(
                              height: 2,
                            ),
                            Text("Monotoring",
                                style: lableStyle.copyWith(
                                    color: selectedIndex == 3
                                        ? Colors.red
                                        : Colors.black)),
                          ])),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        top: BorderSide(color: Colors.red, width: 5),
                        left: BorderSide(color: Colors.red, width: 2),
                        right: BorderSide(color: Colors.red, width: 2),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 10, 7, 7),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text("Transaction", style: lableStyle),
            ],
          ),
        )
      ],
    );
  }
}
