import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationServices extends StatefulWidget {
  const LocationServices({super.key});

  @override
  State<LocationServices> createState() => _LocationServicesState();
}

class _LocationServicesState extends State<LocationServices> {
  // var that contains the location coordinates
  String locationMessage = '';

  //function that fetches the current location
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator.getLastKnownPosition();
    setState(() {
      locationMessage =
          "Latitude: ${position.latitude}\nLongitude: ${position.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Location Picker",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          const Icon(
            Icons.location_on,
            size: 40,
            color: Colors.blue,
          ),
          const SizedBox(height: 20),
          const Text(
            "Position: ",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            locationMessage,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          locationMessage.isEmpty
              ? Center(
                child: ElevatedButton(
                    onPressed: () {
                      getCurrentLocation();
                    },
                    child: const Text(
                      "Get Current Location",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
              )
              : Container(),
        ],
      ),
    );
  }
}
