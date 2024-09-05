import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoogleMapController _mapController;
  final LatLng _center = const LatLng(40.7128, -74.0060);

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  bool _isOnline = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('CityCart Delivery App'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.chat_bubble),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text(
                  //   _isOnline ? 'Online' : 'Offline',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Switch(
                    value: _isOnline,
                    onChanged: (value) {
                      setState(() {
                        _isOnline = value; // Update the state of the switch
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Active Order",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(4),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: Text('Cash On Delivery'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "Order ID: #113858",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 7),
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(width: 3),
                      Text(
                        "Store Location",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text("1234 Sunshine Bid, Miami, FL 33101"),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5), // Adjust the radius as needed
                        child: GoogleMap(
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 15.0,
                          ),
                          onMapCreated: (controller) {
                            _mapController = controller;
                          },
                          mapType: MapType.normal,
                          myLocationEnabled: true,
                          myLocationButtonEnabled: true,
                          zoomControlsEnabled: false,
                          compassEnabled: false,
                          markers: const {},
                          mapToolbarEnabled: true,
                          onLongPress: (position) {
                            // Handle long press event if needed
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width, // Width ko screen width ke equal set karna
                        padding: EdgeInsets.all(15.0), // Padding ko adjust karna
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30), // Corner radius ko increase karna
                            topRight: Radius.circular(30),
                          ),
                          gradient: LinearGradient(
                            colors: [Colors.white, Colors.transparent], // Gradient colors
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        // margin: EdgeInsets.symmetric(horizontal: 20),// Remove margin or set it to zero if needed

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.green,
                                backgroundColor: Colors.white,
                                shadowColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Details'),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Direction'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          'Orders',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      margin: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                        color: Colors.yellowAccent[400],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Today', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('Orders', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow[200],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('This Week', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('Orders', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      margin: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                        color: Colors.blue[200],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Delivered', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('Orders', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      decoration: BoxDecoration(
                                        color: Colors.pink[100],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Cancelled', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('Orders', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      margin: EdgeInsets.only(right: 7),
                                      decoration: BoxDecoration(
                                        color: Colors.green[50],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Cash in Hand', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          // Text('Orders', style: TextStyle(fontSize: 20)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 130,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent[100],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Wallet / Online', style: TextStyle(fontSize: 20, color: Colors.black54)),
                                          // Text('Orders', style: TextStyle(fontSize: 20)),
                                          Text('₹ 0', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}