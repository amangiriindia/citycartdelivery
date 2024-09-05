import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Request'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_backspace),
        ),
        centerTitle: true,
        backgroundColor: Colors.white, // Set app bar background color to white
      ),
      backgroundColor: Colors.white, // Set body background color to white
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
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png', // Image path
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png', // Image path
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png', // Image path
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    {
      'image': 'assets/images/logo.png',
      'title1': 'Order ID: #113858',
      'title2': 'Store XYZ',
      'iconText': '04:54 AM',
      'sideText': '16th May 2024',
      'button1': 'Accept',
      'button2': 'Ignore',
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomListItem(
          image: items[index]['image']!,
          title1: items[index]['title1']!,
          title2: items[index]['title2']!,
          iconText: items[index]['iconText']!,
          sideText: items[index]['sideText']!,
          button1: items[index]['button1']!,
          button2: items[index]['button2']!,
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
  final String button1;
  final String button2;

  CustomListItem({
    super.key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.iconText,
    required this.sideText,
    required this.button1,
    required this.button2,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageWidth = screenWidth * 0.25; // Adjust the image width based on screen size

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            offset: const Offset(-3, 0),
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 7,
            offset: const Offset(3, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: imageWidth,
            ),
            child: Image.asset(image,  height: 90),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align sideText to the right
                  children: [
                    Text(
                      title1,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      sideText,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    title2,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.timer_sharp, size: 14, color: Colors.black),
                    const SizedBox(width: 3),
                    Text(
                      iconText,
                      style: const TextStyle(fontSize: 10),
                    ),
                    const Spacer(), // Add spacer to push buttons to the right
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green[800],
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          padding: const EdgeInsets.all(2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.white10),
                          ),
                          fixedSize: const Size(80, 30),
                          minimumSize: const Size(70, 30),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Accept',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Space between buttons
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.green,
                          backgroundColor: Colors.white10,
                          padding: const EdgeInsets.all(2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          fixedSize: const Size(80, 30),
                          minimumSize: const Size(70, 30),
                        ),
                        onPressed: () {},
                        child: const Text('Ignore'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
