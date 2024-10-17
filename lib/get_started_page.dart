import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

PageController _controller = PageController();

class _GetStartedPageState extends State<GetStartedPage> {
  final _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'Assets/onboarding_images/headerleftimage.png'),
                          fit: BoxFit.cover),
                    ),
                    child: const Center(
                      child: Text('Slide 3'),
                    ),
                  ),
                )),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_currentPageIndex < 3) {
              _controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            }
          },
          child: const Icon(Icons.arrow_forward),
        ),
      ),
    );
  }
}
