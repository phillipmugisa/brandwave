import 'dart:ffi';

import 'package:flutter/material.dart';

class BookAdSpace extends StatefulWidget {
  const BookAdSpace({super.key});

  @override
  State<BookAdSpace> createState() => _BookAdSpaceState();
}

class _BookAdSpaceState extends State<BookAdSpace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10.0),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Advertisement Route",
                      style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                        color: Color.fromARGB(220, 36, 37, 37),
                      ),
                    ),
                    const SizedBox(height: 15.0,),
                    TextFormField(
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 69, 161, 236),
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
                        ),
                        labelText: "From",
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 53, 53, 53),
                        ),
                      ),
                      onChanged: (text) => {},
                    ),
                    const SizedBox(height: 10.0,),
                    TextFormField(
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 53, 53, 53),
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Color.fromRGBO(33, 149, 243, 0.551))
                        ),
                        labelText: "To",
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(255, 53, 53, 53),
                        ),
                      ),
                      onChanged: (text) => {},
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "Select Advert Vehicle",
                    style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                      color: Color.fromARGB(220, 36, 37, 37),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                VehicleCard(spaceName:"Mark's Sale Billboard", towns: ["Kampala","Mukono","Entebbe"],price: "UGX 100000"),
                VehicleCard(spaceName:"Mark's Sale Billboard", towns: ["Kampala","Mukono","Entebbe"],price: "UGX 100000"),
                VehicleCard(spaceName:"Mark's Sale Billboard", towns: ["Kampala","Mukono","Entebbe"],price: "UGX 100000"),
                VehicleCard(spaceName:"Mark's Sale Billboard", towns: ["Kampala","Mukono","Entebbe"],price: "UGX 100000"),
              ],
            ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Confirm", style: TextStyle(fontSize: 17.0),),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/'),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Cancel", style: TextStyle(fontSize: 17.0,color: Colors.red),),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class VehicleCard extends StatefulWidget {

  final String spaceName;
  final String price;
  final List<String> towns;

  const VehicleCard({
    Key? key,
    required this.spaceName,
    required this.towns,
    required this.price
  }) : super(key: key);

  @override
  State<VehicleCard> createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Card(
        color: isSelected ? const Color.fromRGBO(109, 189, 255, 0.658): Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(146, 230, 228, 228)
                ),
                child: const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(146, 0, 0, 0)
                ),
              ),
              const SizedBox(width: 10.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.spaceName,
                    style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                      color: Color.fromARGB(220, 36, 37, 37),
                    ),
                  ),
                  const SizedBox(height: 2.5,),
                  Row(
                    children: widget.towns.map((town) => Text(
                        "$town, ",
                        style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                          color: Color.fromARGB(220, 62, 63, 63),
                        ),
                    )).toList(),
                  ),
                ],
              ),
              const SizedBox(width: 10.0,),
              Expanded(child: Text(widget.price))
            ],
          ),
        ),
      ),
    );
  }
}