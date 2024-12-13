import 'package:flutter/material.dart';
import 'package:lms/screens/Onboarding/login_screen.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

PageController _controller = PageController();

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "INTERFY",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.question_mark_rounded,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.teal.shade800,
        ),
        body: PageView(
          controller: _controller,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (int index) {
            setState(() {
              _controller = index as PageController;
            });
          },
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'Assets/onboarding_images/headerleftimage.png'),
                        fit: BoxFit.cover),
                  ),
                  child: const Center(
                    child: Text('Slide 1'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'Assets/onboarding_images/headerleftimage.png'),
                          fit: BoxFit.cover)),
                  child: const Center(
                    child: Text('Slide 2'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          animationDuration: const Duration(milliseconds: 500),
                          backgroundColor: Colors.teal),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
