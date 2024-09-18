import 'package:doctor_app/view/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  List catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear"
  ];

  List <Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: Colors.green,),
    Icon(MdiIcons.heartPlus, color: Colors.green,),
    Icon(MdiIcons.eye, color: Colors.green,),
    Icon(MdiIcons.brain, color: Colors.green,),
    Icon(MdiIcons.earHearing, color: Colors.green,)
  ];

  List docImages = [
    "assets/doctor1.jpg",
    "assets/doctor2.jpg",
    "assets/doctor3.jpg",
    "assets/doctor4.jpg",
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/Amen.jpg",),
                          radius: 33,
                        ),
                        const SizedBox(width: 15,),
                        const Text("Hi, Ozias", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500),),
                        const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF4F8FF),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ]
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                    ),
                  ],
                ),),
                Container(
                  height: 55,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 20, bottom: 20, left: 15, right: 15),
                  decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 3,
                          )
                        ]
                      ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 20
                      ),
                      prefixIcon: const Icon(Icons.search)
                    ),
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.only(left: 15),
                  child: Text(
                    "Symptoms",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 23,
                      fontWeight: FontWeight.w500
                    ),
                  ),),
                  const SizedBox(height: 10,),
                  Container(
                    height: 110,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () { 
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                                height: 60,
                                width: 60,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 4
                                    )
                                  ]
                                ),
                                child: Center(
                                  child: catIcons[index],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(catNames[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.w500
                              ),)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Our Best Doctors",
                    style: TextStyle(
                      fontSize: 23,
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500
                    ),),),
                  Container(
                    height: 340,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: docImages.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 300,
                              width: 200,
                              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow:const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2
                                  )
                                ]
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>  DoctorScreen()));
                                        },
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            topRight: Radius.circular(15)
                                          ),
                                          child: Image.asset(
                                            docImages[index],
                                            width: 200,
                                            height: 200,
                                            fit: BoxFit.cover,
                                            )
                                          )
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: const EdgeInsets.all(8),
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 4,
                                                  spreadRadius: 2
                                                )
                                              ]
                                            ),
                                            child: const Icon(Icons.favorite_outline, color: Colors.green,size: 25,),
                                          ),
                                        ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Dr Doctor Name", 
                                              style: TextStyle(
                                                color: Colors.black.withOpacity(0.7),
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500
                                              ),),
                                        Text("Surgeon",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black.withOpacity(0.6)
                                        ),),
                                        const SizedBox(height: 6,),
                                        Row(
                                          children: [
                                            const Icon(Icons.star, color: Colors.amber,),
                                            Text("4.9", style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black.withOpacity(0.6),
                                            ),)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  )
              ],
            ),),
        ],
      ),
    );
  }
}