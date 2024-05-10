import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapsComponent extends StatefulWidget {
  GoogleMapsComponent({Key? key}) : super(key: key);

  @override
  State<GoogleMapsComponent> createState() => _GoogleMapsComponentState();
}

//AIzaSyAfoMnuNDACkKtreRhwAuyGe7jKLhCNLWE
class _GoogleMapsComponentState extends State<GoogleMapsComponent> {
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.066000055);

  @override
  Widget build(BuildContext context) {
    return //Scaffold(
        GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(target: sourceLocation, zoom: 14.5),
      markers: {
        Marker(
          markerId: MarkerId("source"),
          position: sourceLocation,
        ),
        Marker(
          markerId: MarkerId("destination"),
          position: destination,
        ),
      },
    );
  }
}
