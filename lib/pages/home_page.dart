import 'package:flutter/material.dart';
import '../animation/animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.6),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.2),
                ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 120,
                    ),
                    FadeAnimation(
                        1.0,
                        Text(
                          "Find the best parties near you.",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      1.2,
                      Text(
                        "Let us find you a party for your interest.",
                        style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    isLogin
                        ? FadeAnimation(
                      1.4,
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.yellow[900],
                        ),
                        child: const Center(
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                        : FadeAnimation(
                      1.5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red,
                            ),
                            child: const Center(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),),
                          const SizedBox(width: 10,),
                          Expanded(child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
