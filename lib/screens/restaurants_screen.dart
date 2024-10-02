import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Vyhľadávač reštaurácii | McDonald's SK", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
        ),
        body: content(),
      ),
    );
  }
}

Widget content() {
    return FlutterMap(
    options: MapOptions(
      initialCenter: LatLng(48.309, 18.0841),
      initialZoom: 8,
      interactionOptions: const InteractionOptions(flags: ~InteractiveFlag.doubleTapZoom),
    ),
    children: [
      openStreetMapTileLayer,
       MarkerLayer(markers: slovakCitiesMarkers),
    ],
  );
}

TileLayer get openStreetMapTileLayer => TileLayer(
  urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
);

List<Marker> get slovakCitiesMarkers => [
      Marker(
        point: LatLng(48.14816, 17.10674), // Bratislava
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.716385, 21.261074), // Košice
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.9985, 21.2398), // Prešov
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(49.2238, 18.7423), // Žilina
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.3069, 18.0841), // Nitra
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.7395, 19.1531), // Banská Bystrica
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.3774, 17.5883), // Trnava
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
      Marker(
        point: LatLng(48.8945, 18.0444), // Trenčín
        child: const Icon(Icons.location_on, color: Colors.red, size: 40),
      ),
    ];