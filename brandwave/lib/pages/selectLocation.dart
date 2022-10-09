import "package:flutter/material.dart";
import "package:brandwave/utils/screens.dart";
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  Position ? coordinates;
  List<Placemark>? location;


  Future getLocationName(Position clientPosition) async {
    print("getting location name");
    return await placemarkFromCoordinates(clientPosition!.latitude, clientPosition!.longitude, localeIdentifier: "en");
  }

  Future getClientLocation () async {

    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location Not Available');
      }
    } else {
      // throw Exception('Error');
    }

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }


  @override
  void initState() {
    super.initState();


    getClientLocation()
      .then((clientPosition) => {
        getLocationName(clientPosition)
            .then((placements) => {
              setState(() {
                print("getting location name");
                print("$placements");
                coordinates = clientPosition;
                // coordinates = clientPosition;
              })
            })
      });
  }


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as AdvertScreenArguments;
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text("${coordinates}"),
                        Text(args.name.toString()),
                        Text(args.description.toString()),
                        Text(args.files.toString()),
                      ],
                    )
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
                          ),
                          onPressed: () => Navigator.pushNamed(context, '/'),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Cancel", style: TextStyle(fontSize: 17.0),),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                          ),
                          onPressed: () => {},
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Continue", style: TextStyle(fontSize: 17.0),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
