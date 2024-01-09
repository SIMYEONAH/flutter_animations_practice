import 'package:flutter/material.dart';

class BoxCircleScreen extends StatefulWidget {
  const BoxCircleScreen({super.key});

  @override
  State<BoxCircleScreen> createState() => _BoxCircleScreenState();
}

class _BoxCircleScreenState extends State<BoxCircleScreen> {
  bool isEnd = false;

  void _onEnd() {
    setState(() {
      isEnd = !isEnd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isEnd ? Colors.white : Colors.black,
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: isEnd ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
              TweenAnimationBuilder(
                duration: const Duration(seconds: 1),
                tween: Tween(
                  begin: isEnd ? 190.0 : 0.0,
                  end: isEnd ? 0.0 : 190.0,
                ),
                builder: (BuildContext context, double value, Widget? child) {
                  return Transform.translate(
                    offset: Offset(value, 0),
                    child: child,
                  );
                },
                onEnd: _onEnd,
                child: Container(
                  width: 10,
                  color: isEnd ? Colors.black : Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
