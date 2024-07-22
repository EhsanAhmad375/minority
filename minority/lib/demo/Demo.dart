import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: Column(
          children: [
            // Text('data'),
            Container(
              height: media.height * 0.2,
              width: media.width,
              color: Colors.blueGrey,
              child: ListTile(
                  title: Text('FiTu'),
                  subtitle: Text('Shemi'),
                  trailing: Text('dfjskdhf'),
                  leading: Container(
                    height: media.height * 0.05,
                    width: media.width * 0.05,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              'images/P3.png',
                            ),
                            fit: BoxFit.cover)),
                    
                  )),
            )
          ],
        ),
      ),
    );
  }
}
