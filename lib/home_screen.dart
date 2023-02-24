import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Hero(
                  tag: 'MAIN_ICON',
                  child: Image.asset('assets/images/blue_butter_fly_logo.png', height: 50,),
                ),
                const SizedBox(width: 10,),
                StreamBuilder(
                  stream: Stream.periodic(const Duration(seconds: 1)),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            DateFormat('dd/MM').format(DateTime.now(),),
                            style: const TextStyle(color: Colors.cyanAccent, fontSize: 18)
                        ),
                        Text(
                            DateFormat('hh:mm').format(DateTime.now(),),
                            style: const TextStyle(color: Colors.cyanAccent, fontSize: 18)
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Blue Butterfly", style: TextStyle(color: Colors.cyanAccent),),
                const SizedBox(width: 10,),
                LoadingAnimationWidget.beat(
                  color: Colors.cyanAccent,
                  size: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}