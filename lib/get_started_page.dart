import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}
 PageController _controller= PageController();
class _GetStartedPageState extends State<GetStartedPage> {

  final _currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller:_controller,
          physics: const BouncingScrollPhysics(),
          onPageChanged: (int index){
           setState(() {
             _controller=index as PageController;
           });
          },
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child:const Center(
                child: Text('Slide 1'),
              ),
            ),
            Container(
              width: 200,
              height: 200,

              color: Colors.lightBlue,
              child:const Center(
                child: Text('Slide 2'),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.purpleAccent,
              child: const Center(
                child: Text('slide 3'),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (
            ){
          if(_currentPageIndex<3){
            _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
          }
        },
          child: const Icon(Icons.arrow_forward),
        ),

      ),
    );
  }
}
