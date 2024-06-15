import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const _maxMarkersCount = 200;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // Define the center point and radius for marker placement
  final LatLng _center = LatLng(27.7022485, 85.3029654);
  final double _radius = 0.01; // Adjust as needed to define the area

  // Helper function to generate a random double within a range
  double doubleInRange(Random source, num start, num end) =>
      source.nextDouble() * (end - start) + start;

  List<Marker> allMarkers = [];

  int numOfMarkers = _maxMarkersCount ~/ 10;

  @override
  void initState() {
    super.initState();

    // Generate random markers within the specified bounding box
    Future.microtask(() {
      final r = Random();
      for (var x = 0; x < _maxMarkersCount; x++) {
        allMarkers.add(
          Marker(
            point: LatLng(
              doubleInRange(r, _center.latitude - _radius, _center.latitude + _radius),
              doubleInRange(r, _center.longitude - _radius, _center.longitude + _radius),
            ),
            width: 80,
            height: 80,
            child: const Icon(Icons.location_on, color: Colors.blue),
          ),
        );
      }
      setState(() {});
    });
  }

  // Handle tap events on the map
  void handleTap(TapPosition tapPosition, LatLng latLng) {
    print('Latitude: ${latLng.latitude}, Longitude: ${latLng.longitude}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OS Map in Flutter',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: _center,
              initialZoom: 15.0, // Adjust as needed
              onTap: handleTap,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              MarkerLayer(markers: allMarkers.take(numOfMarkers).toList()),
            ],
          ),
          if (!kIsWeb)
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: PerformanceOverlay.allEnabled(),
            ),
        ],
      ),
    );
  }
}