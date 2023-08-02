import 'package:flutter/material.dart';
import '../util/utilities.dart';
import '../constants.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    List<String> imagePaths = [
                      'assets/images/2.jpg',
                      'assets/images/3.jpg',
                      'assets/images/4.jpg',
                      'assets/images/5.jpg',
                    ];

                    return Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover, // Tuỳ chỉnh cách hình ảnh được thể hiện trong ô của GridView
                    );
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
