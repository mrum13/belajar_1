import 'package:belajar/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    print("hallo");
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              //   padding: ,
              //   margin: ,
              //   child: Text(
              //     "0",
              //     style: TextStyle(fontSize: 32),
              //   ),
              // ),
              // const SizedBox(
              //   height: 16,
              // ),
              Container(
                // color: Colors.amber,
                child: Text(
                  num.toString(),
                  style: TextStyle(fontSize: 32),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = num + 1;
                        });
                      },
                      child: Icon(Icons.add)),
                  const SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = num - 1;
                        });
                      },
                      child: Icon(Icons.remove)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                num: num,
                              )),
                    );

                    // Navigator.pushNamed(context, 'second');
                  },
                  child: Text("Second Page"))
            ],
          ),
        ),
      ),
    );
  }
}
