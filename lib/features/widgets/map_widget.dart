import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:selim/resources/extensions.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({
    Key? key,
    required this.lat,
    required this.long,
  }) : super(key: key);
  final double lat;
  final double long;

  @override
  State<GoogleMapWidget> createState() => GoogleMapWidgetState();
}

class GoogleMapWidgetState extends State<GoogleMapWidget> {
  late Completer<GoogleMapController> _controller;
  @override
  void initState() {
    super.initState();
    _controller = Completer<GoogleMapController>();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.18,
      width: context.height * 0.18,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.lat, widget.long),
          zoom: 18,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
