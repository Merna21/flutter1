import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
              children:[ Stack(
          children: [
            new ClipPath(
              child: Container(height: 200,width: MediaQuery.of(context).size.width,color: Colors.purple,),
              clipper:new Myclipper(),
            ),
            Positioned(top: 120,
            left: 170,
              child: Container(height: 90,width: 90,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
              child: Center(child:  Container(height: 70,width: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.orange[800]),)
              
              ),),
              
              ),
],
        ),
          SizedBox(height: 30,),
              Text('Example Article',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Container(height: 1,width: 120,color: Colors.black,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(height: 400,width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\n hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\nhfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\nhfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl \n jfmslmhddmnkdn mpcvms .',style: TextStyle(color: Colors.black,fontSize: 15),),
                       SizedBox(height: 30,),
                                             Text('hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\nhfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\nhfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl \n jfmslmhddmnkdn mpcvms jbfkwnslkmllml nkmlmp,p \n jfmslmhddmnkdn mpcvms jbfkwnslkmllmlkpkmp,p;,;,mp,vuvyctvh \n jfmslmhddmnkdn mpcvms jbfkwnslkmllml hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\n hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl npmpm,p\n hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\n hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\n hfksjdmnlmvjbnbinmmmkmk kfgcgfcfin lmclsmdl\n',style: TextStyle(color: Colors.black,fontSize: 15),),

                       
                      ],
                    ),
                  ),
                ),
              )

         
        ],
      ),
    );
  }}
  class Myclipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    
    var firstend= new Offset(size.width,size.height/2 + 20);
    var firstcont= new Offset(size.width/2, size.height);
    path.quadraticBezierTo(firstcont.dx, firstcont.dy, firstend.dx, firstend.dy);

     path.lineTo(size.width, size.height/2);
     path.lineTo(size.width, 0.0);
     path.close();
       return path;



     
    }
  
  
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
    
  
}