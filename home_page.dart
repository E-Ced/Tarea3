import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> _listElements = [
    {
      "day": "Day 1",
      "destination": "Cancún",
      "image": "assets/images/cancun.jpg",
    },
    {
      "day": "Day 2",
      "destination": "Nayarit",
      "image": "assets/images/nayarit.jpg",
    },
    {
      "day": "Day 3",
      "destination": "Los Cabos",
      "image": "assets/images/cabos.jpg",
    },
    {
      "day": "Day 4",
      "destination": "Chiapas",
      "image": "assets/images/chiapas.jpg",
    },
    {
      "day": "Day 5",
      "destination": "Oaxaca",
      "image": "assets/images/oaxaca.jpg",
    },
    {
      "day": "Day 6",
      "destination": "Monterrey",
      "image": "assets/images/monterrey.jpg",
    },
    {
      "day": "Day 7",
      "destination": "Tijuana",
      "image": "assets/images/tijuana.jpg",
    },
    {
      "day": "Day 8",
      "destination": "León",
      "image": "assets/images/leon.jpg",
    },
    {
      "day": "Day 9",
      "destination": "Puebla",
      "image": "assets/images/puebla.jpg",
    },
    {
      "day": "Day 10",
      "destination": "Veracruz",
      "image": "assets/images/veracruz.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Reserva tu hotel'),
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image.asset('assets/images/header.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 250,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                              destinationMap: _listElements[index]);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: MaterialButton(
                        height: 0,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                  content: Text("Reservación en progreso")),
                            );
                        },
                        child: Text(
                          "Start booking",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
