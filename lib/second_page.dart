import 'package:belajar/home_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final int num;

  const SecondPage({
    super.key,
    this.num = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Second Page $num"),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const HomePage()),
                  // );

                  // Navigator.pushNamed(context, 'home');

                  Navigator.pop(context);
                },
                child: Text("First Page"))
          ],
        ),
      )),
    );
  }
}
