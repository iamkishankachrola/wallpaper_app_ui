import 'dart:core';
import 'package:flutter/material.dart';

void main(){
  runApp(const WallpaperApp());
}
class WallpaperApp extends StatelessWidget{
  const WallpaperApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget{
  List<String> bestWallpaperList = [
    "assets/images/car.jpg",
    "assets/images/city.jpg",
    "assets/images/galaxy.jpg",
    "assets/images/highway.jpg",
    "assets/images/nature.jpg"
  ];
  List<Color> colorsList = [
    const Color(0xffFDB7B9),const Color(0xff4164E0),const Color(0xff6141E0),const Color(0xff60BFC1),
    const Color(0xff292929),const Color(0xffFF9A0D),const Color(0xffB647EB),Colors.red,Colors.blueGrey,
    Colors.green,Colors.brown,Colors.yellowAccent,Colors.teal
  ];
  List<Map<String,dynamic>> categoriesList = [
    {
      "image" : "assets/images/abstract.jpg",
      "name" : "Abstrack",
    },
    {
      "image" : "assets/images/nature1.jpg",
      "name" : "Nature",
    },
    {
      "image" : "assets/images/sky.jpg",
      "name" : "Sky",
    },
    {
      "image" : "assets/images/tiger.jpg",
      "name" : "Animals",
    },
    {
      "image" : "assets/images/cars.jpg",
      "name" : "Cars",
    },
    {
      "image" : "assets/images/canyon.jpg",
      "name" : "Canyon",
    },

  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffD9EBEF),Color(0xffF5ECEE)])
        ),
        child: ListView(
          children:  [
            const SizedBox(height: 120,),
            const Text("Best of the month",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            const SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  width: 155,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(bestWallpaperList[index]),fit:BoxFit.cover),
                ),);
              },itemCount: bestWallpaperList.length,scrollDirection: Axis.horizontal,),
            ),
            const SizedBox(height: 25,),
            const Text("The color tone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            const SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ListView.builder(itemBuilder:(context, index) {
                return Container(
                  width: 50,
                  margin:const EdgeInsets.only(right: 15) ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorsList[index]
                  ),
                );
              },itemCount: colorsList.length,scrollDirection: Axis.horizontal,),
            ),
            const SizedBox(height: 25,),
            const Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SizedBox(
                width: double.infinity,
                height: 330,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 2/1
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(categoriesList[index]["image"]),fit: BoxFit.cover)
                            ),
                          ),
                          Center(child: Text(categoriesList[index]["name"],style: const TextStyle(fontSize: 20,color: Colors.white),))

                        ],
                      );
                    },itemCount: categoriesList.length,),
              ),
            )
          ],
        ),
      ),
    );
  }

}