import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapPage extends StatefulWidget {
  const MyMapPage({super.key});

  @override
  State<MyMapPage> createState() => _MyMapPageState();
}

class _MyMapPageState extends State<MyMapPage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(16.098476142490448, 80.15241829634823),
    zoom: 12,
  );

  final List<Marker> myMarker = [];
  final List<Marker> markerList = const [
    Marker(
      markerId: MarkerId('first'),
      position: LatLng(16.090539, 80.154106),
      infoWindow: InfoWindow(title: 'Thandri Sannidhi Church'),
    ),
    Marker(
      markerId: MarkerId('second'),
      position: LatLng(16.06976454617307, 80.10070626729163),
      infoWindow: InfoWindow(title: 'Meetings Ground'),
    ),
    Marker(
      markerId: MarkerId('third'),
      position: LatLng(16.108875521022, 80.116044727334),
      infoWindow: InfoWindow(title: 'Prayer Garden'),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myMarker.addAll(markerList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _initialPosition,
          mapType: MapType.terrain,
          markers: Set<Marker>.of(myMarker),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}
