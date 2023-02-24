import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:wear_1/home_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 7)).then((value){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            height: size.height,
            width: size.height,
            child: Center(
                child: Hero(
                  tag: 'MAIN_ICON',
                  child: Image.asset('assets/images/blue_butter_fly_logo.png', height: 50,),
                ),
            ),
          ),
          SimpleCircularProgressBar(
            size: size.width,
            progressStrokeWidth: 10,
            backStrokeWidth: 0,
            progressColors: const [Colors.tealAccent],
            mergeMode: true,
          ),
        ],
      ),
    );
  }
}
