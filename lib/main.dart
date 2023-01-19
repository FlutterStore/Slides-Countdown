import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExampleSlideCountdown(),
    );
  }
}

const defaultDuration = Duration(days: 2, hours: 2, minutes: 30);
const defaultPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 5);

class ExampleSlideCountdown extends StatelessWidget {
  const ExampleSlideCountdown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SlideCountdown',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('Default'),
            ),
            const SlideCountdown(
              duration: defaultDuration,
              padding: defaultPadding,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('Default SlideCountdownSeparated'),
            ),
            const SlideCountdownSeparated(
              duration: defaultDuration,
              padding: defaultPadding,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('With Icon, Fade true, & SlideDirection.up'),
            ),
            const SlideCountdown(
              duration: defaultDuration,
              padding: defaultPadding,
              slideDirection: SlideDirection.up,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ), 
              icon: Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('Custom BoxDecoration & SeparatorType.title'),
            ),
            const SlideCountdown(
              duration: defaultDuration,
              padding: defaultPadding,
              separatorType: SeparatorType.title,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text('Localization Custom Duration Title'),
            ),
            SlideCountdown(
              duration: defaultDuration,
              padding: defaultPadding,
              separatorType: SeparatorType.title,
              durationTitle: DurationTitle.id(),
              icon: const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}