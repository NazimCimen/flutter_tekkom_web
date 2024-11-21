import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';

class GoogleMapWidget extends StatefulWidget {
  const GoogleMapWidget({super.key});

  @override
  State<GoogleMapWidget> createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState
    extends BaseStateful<GoogleMapWidget, ChangeNotifier> {
  late GoogleMapController mapController;
  static const LatLng _businessLocation = LatLng(38.031198, 32.602152);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (_) {},
      child: AbsorbPointer(
        absorbing: false,
        child: Column(
          children: [
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: _businessLocation,
                zoom: 15,
              ),
              markers: {
                const Marker(
                  markerId: MarkerId('businessMarker'),
                  position: _businessLocation,
                  infoWindow: InfoWindow(
                    title: 'Kartex Madencilik Ve Tekstil',
                    snippet: '',
                  ),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
