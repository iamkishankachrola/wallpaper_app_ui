import 'package:flutter/material.dart';
void main(){
  runApp(const WallpaperApp());
}
class WallpaperApp extends StatelessWidget{
  const WallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SetWallpaperPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SetWallpaperPage extends StatelessWidget{
  const SetWallpaperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/nature8.jpg",fit: BoxFit.fill,height: double.infinity,width: double.infinity),
         Align(
           alignment: Alignment.bottomCenter,
           child: Padding(
             padding: const EdgeInsets.only(bottom: 15),
             child: SizedBox(
               width: 300,
               height: 100,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                           color: const Color(0xffBEB8B3),
                           
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.info_outline_rounded,color: Colors.white,),
                       ),
                       const Text("info",style: TextStyle(color: Colors.white,fontSize: 14),)
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                             color: const Color(0xffBEB8B3),
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.save_alt_rounded,color: Colors.white,),
                       ),
                       const Text("Save",style: TextStyle(color: Colors.white,fontSize: 14),)
                     ],
                   ),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                             color: Colors.blue,
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: const Icon(Icons.brush_rounded,color: Colors.white,),
                       ),
                       const Text("Apply",style: TextStyle(color: Colors.white,fontSize: 14),)
                     ],
                   )
                 ],
               ),
             ),
           ),
         )
        ],
      ),
    );
  }

}