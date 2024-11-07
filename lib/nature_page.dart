import 'package:flutter/material.dart';
void main(){
  runApp(const WallpaperApp());
}
class WallpaperApp extends StatelessWidget{
  const WallpaperApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NaturePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class NaturePage extends StatelessWidget{
  List<String> natureWallpaperList = [
      "assets/images/nature1.jpg",
      "assets/images/nature2.jpg",
      "assets/images/nature3.jpg",
      "assets/images/nature4.jpg",
      "assets/images/nature.jpg",
      "assets/images/nature6.jpg",
      "assets/images/nature7.jpg",
      "assets/images/nature8.jpg",
  ];

  NaturePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBF1F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            const Text("Nature",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            const Text("8 wallpaper available",style: TextStyle(color: Colors.grey,fontSize: 18),),
             const SizedBox(height: 20,),
             SizedBox(
               width: double.infinity,
               height: 700,
               child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2/3,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage( natureWallpaperList[index]),fit: BoxFit.cover)
                      ),
                    );
                  },itemCount: natureWallpaperList.length,),
             ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

}