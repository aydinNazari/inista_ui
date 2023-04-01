import 'package:flutter/material.dart';
import 'package:inista_ui/post_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    child: SizedBox(
                      width: size.width / 3,
                      child: Image.asset('asset/logo/insta_logo.png'),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border,
                    size: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        width: size.width / 15,
                        child: Image.asset('asset/logo/forward.png')),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: size.width / 4.5,
                            height: size.width / 4.5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'asset/images/aydin_profil.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 5,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('asset/logo/plus.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffd62976),
                              Color(0xfffeda75),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: size.width / 4.8,
                            height: size.width / 4.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/profile1.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffd62976),
                              Color(0xfffeda75),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: size.width / 4.8,
                            height: size.width / 4.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/profile3.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffd62976),
                              Color(0xfffeda75),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: size.width / 4.8,
                            height: size.width / 4.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/profile4.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffd62976),
                              Color(0xfffeda75),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            width: size.width / 4.8,
                            height: size.width / 4.8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/profile5.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PostWidget(
                postName: 'lora_ehas',
                postImageUrl: 'asset/images/profile3.png',
                postUrl: 'asset/images/profile3.png',
                textt: '  Acı sana ne zaman durman..',
                commentCount: '2',
                like: '200',
              ),
              PostWidget(
                postName: 'ehas',
                postImageUrl: 'asset/images/profile5.png',
                postUrl: 'asset/images/aydin2.png',
                textt: '  Acı sana ne zaman durman..',
                commentCount: '1',
                like: '350',
              ),
              PostWidget(
                postName: 'sara55',
                postImageUrl: 'asset/images/profile1.png',
                postUrl: 'asset/images/aydin3.png',
                textt: '  Acı sana ne zaman durman..',
                commentCount: '2',
                like: '200',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
