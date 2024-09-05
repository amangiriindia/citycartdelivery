import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_backspace_rounded),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomListView(),
    );
  }
}
class CustomListView extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/logo.png', // Image path
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CustomListItem(
              image: items[index]['image']!,
              title1: items[index]['title1']!,
              title2: items[index]['title2']!,
              iconText: items[index]['iconText']!,
              sideText: items[index]['sideText']!,
              constraints: constraints,
            );
          },
        );
      },
    );
  }
}

class CustomListItem extends StatelessWidget {
  final String image;
  final String title1;
  final String title2;
  final String iconText;
  final String sideText;
  final BoxConstraints? constraints;

  CustomListItem({
    required this.image,
    required this.title1,
    required this.title2,
    required this.iconText,
    required this.sideText,
    this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            offset: Offset(-3, 0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            offset: Offset(3, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints!.maxWidth * 0.25, // Adjust as needed
            ),
            child: Image.asset(
              image,
              width: 80,
              height: 80,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  title2,
                  style: TextStyle(fontSize: 14, color: Colors.green),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.timer_sharp, size: 14, color: Colors.black),
                    SizedBox(width: 3),
                    Text(
                      iconText,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                // SizedBox(height: 5), // Add space between text and sideText
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(), // Add top padding
            child: Align(
              alignment: Alignment.topRight, // Align sideText to the right
              child: Text(
                sideText,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}