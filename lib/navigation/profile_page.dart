import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isDarkMode = false; // State variable for Dark Mode switch
  bool isNotificationEnabled = true; // State variable for Notification switch

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> icons = [
      {'type': 'icon', 'data': Icons.dark_mode_sharp, 'text': 'Dark Mode'},
      {'type': 'icon', 'data': Icons.notifications, 'text': 'Notification'},
      {'type': 'icon', 'data': Icons.assignment_ind_outlined, 'text': 'Terms & Conditions'},
      {'type': 'icon', 'data': Icons.key, 'text': 'Privacy Policy'},
      {'type': 'icon', 'data': MdiIcons.commentTextOutline, 'text': 'Conversation'}, // Using MdiIcons
      {'type': 'icon', 'data': Icons.monetization_on_outlined, 'text': 'Earnings'}, // Using SVG
      {'type': 'icon', 'data': Icons.lock, 'text': 'Change Password'},
      {'type': 'icon', 'data': Icons.edit_outlined, 'text': 'Edit Profile'},
      {'type': 'icon', 'data': MdiIcons.trashCanOutline, 'text': 'Delete Account'},
      {'type': 'icon', 'data': MdiIcons.power, 'text': 'Logout'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 20,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.keyboard_backspace_rounded),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.lightGreen],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Rectangle
                Container(
                  width: double.infinity,
                  height: 140,
                  color: Colors.lightGreen[500],
                ),
                Positioned(
                  top: 40,
                  child: Container(
                    width: 100,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.lightGreen.shade600, width: 4),
                      color: Colors.yellow,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/logo.png"),
                      radius: 75, // Make sure radius is half of the width and height
                    ),
                  ),
                ),
                Positioned(
                  bottom: -40, // Position the green corner below the circle
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        color: Colors.transparent,
                        width: 10, // Adjust border width as needed
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.lightGreen.shade600,
                          Colors.lightGreen.shade600,
                          Colors.transparent,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: const [
                          0.0,
                          0.3,
                          0.7,
                          1.0,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Test 1',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '12th May, 2024',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Joined Since',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '22 Days',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen[900]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Total Order',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '0',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen[900]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: icons.length,
              itemBuilder: (context, index) {
                final icon = icons[index];
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: InkWell(
                    onTap: () {
                      print('Container clicked');
                    },
                    child: ListTile(
                      leading: icon['type'] == 'icon'
                          ? Icon(icon['data'], color: Colors.black)
                          : Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(icon['data'], width: 50, height: 24),
                      ), // Corrected to use Image.asset for PNG
                      title: Text(icon['text'], style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: (icon['type'] == 'icon' && icon['data'] == Icons.notifications)
                          ? Switch(
                        value: isNotificationEnabled,
                        onChanged: (bool value) {
                          setState(() {
                            isNotificationEnabled = value;
                          });
                        },
                      )
                          : (icon['type'] == 'icon' && icon['data'] == Icons.dark_mode_sharp)
                          ? Switch(
                        value: isDarkMode,
                        onChanged: (bool value) {
                          setState(() {
                            isDarkMode = value;
                          });
                        },
                      )
                          : null,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
