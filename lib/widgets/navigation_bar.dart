import 'package:flutter/material.dart';
import 'package:ui_demo/screens/new_game.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    const kBgfooterScreen = BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/images/menu_background.png',
        ),
        fit: BoxFit.fill,
      ),
    );
    return Column(
      children: [
        // Image(
        //   image: AssetImage("assets/images/menu_backgroun.png"),
        //   fit: BoxFit.cover,
        // ),
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 0),
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 107, 122,
                        231), // Replace with your desired circle color
                  ),
                  child: TextButton(
                    child: Image.asset("assets/images/game.png"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewGameScreen(),
                          ));
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: kBgfooterScreen,
                height: 80,
                width: 500,
                margin: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextButton(
                            onPressed: () {
                              // Define what should happen when the button is pressed.
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/statistics.png"),
                                const SizedBox(height: 16),
                                const Text(
                                  "Statistics",
                                  style: TextStyle(
                                      fontSize: 10.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextButton(
                            onPressed: () {
                              // Define what should happen when the button is pressed.
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/info.png"),
                                const SizedBox(height: 16),
                                const Text(
                                  "Info",
                                  style: TextStyle(
                                      fontSize: 10.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NewGameScreen(),
                                  ));
                            },
                            child: const Column(
                              children: [
                                SizedBox(height: 40),
                                Text(
                                  "Games",
                                  style: TextStyle(
                                      fontSize: 10.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextButton(
                            onPressed: () {},
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                        "assets/images/notification.png"),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, bottom: 15),
                                      child: Container(
                                        width: 5,
                                        height: 5,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  'Notification',
                                  style: TextStyle(
                                    fontSize: 10.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                          child: TextButton(
                            onPressed: () {
                              // Define what should happen when the button is pressed.
                            },
                            child: Column(
                              children: [
                                Image.asset("assets/images/profiles.png"),
                                const SizedBox(height: 16),
                                const Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 10.5, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
