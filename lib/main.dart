import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("RedBus",style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),),
      //   centerTitle: true,
      //   backgroundColor: Colors.grey.shade300,
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                const Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Icon(Icons.menu,color: Colors.black,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Image.asset("assets/images/redbus.png",width: 70,height: 100,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 12.0,left: 200),
                  child: Icon(Icons.account_circle_outlined,size: 50,color: Colors.black87,),
                ),
              ],
            ),
          ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 2,
                )],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Image.asset("assets/images/red.png",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset("assets/images/dicount.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10,height: 10,),
            Container(
              width: double.infinity,
              height: 75,
              color: Colors.white,
              child: const Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 8.0),
                    child: Text("Online Bus Ticket Booking",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Text("Assured seat of your choice",style: TextStyle(fontSize: 20,color: Colors.grey),),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Container(
              width: 350,
              height: 380,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(21),
                boxShadow: const [BoxShadow(color: Colors.grey,blurRadius: 5,spreadRadius: 2)],
              ),
              child: Column(
                children: [
                  const SizedBox(
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.only(top:30.0),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: FaIcon(FontAwesomeIcons.bus,size: 40),
                            label: Text("From",style: TextStyle(fontSize: 25,color: Colors.black54),),
                          ),
                        ),
                      ),
                  ),
                  const SizedBox(
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.only(top:30.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: FaIcon(FontAwesomeIcons.bus,size: 40,),
                          label: Text("To",style: TextStyle(fontSize: 25,color: Colors.black54),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: IconButton(
                              onPressed: ()async {
                                DateTime? date = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2024),
                                    lastDate: DateTime(2026));
                              },
                              icon: const Icon(Icons.date_range_outlined,size: 40,)),
                          label: Text("${time.day}-${time.month}-${time.year}"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: SizedBox(
                      width: 300,
                      height: 100,
                      child: TextButton(
                        onPressed: (){},
                        child: Container(
                          width: 300,
                          height: 50,
                          color: Colors.red,
                          child: const Center(child: Text("SEARCH BUSES",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 400,
              height: 120,
              color: Colors.white,
              child: Column(
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                        child: Text("OFFERS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0,left: 210.0),
                        child: Text("View all",style: TextStyle(color: Colors.blue,fontSize: 18),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                        child: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(child: Text("All",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                        child: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2,color: Colors.black),
                          ),
                          child: const Center(child: Text("Bus",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                        child: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2,color: Colors.black),
                          ),
                          child: const Center(child: Text("Train",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 10.0),
                        child: Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2,color: Colors.black),
                          ),
                          child: const Center(child: Text("Cabs",style: TextStyle(fontSize: 20,color: Colors.black54,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img1.png",fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img2.png",fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img3.png",fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img4.png",fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img5.png",fit: BoxFit.fill)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      width: 300,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("assets/images/img6.png",fit: BoxFit.fill)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 350,
              height: 300,
              color: Colors.red,
              child: Image.asset("assets/images/inde.jpg",fit: BoxFit.fill,),
            ),
            Container(
              width: 350,
              height: 200,
              color: Colors.green,
              child: Image.asset("assets/images/img7.jpg",fit:BoxFit.fill),
            ),
            Container(
              width: 350,
              height: 320,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Government Buses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                  const Text("Book RTC buses on redBus within minutes",style: TextStyle(fontSize: 18,color: Colors.grey),),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                          child: Container(
                            width: 320,
                            height: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/hrtc.png",fit: BoxFit.fill,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                          child: Container(
                            width: 350,
                            height: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/rtc.png",fit: BoxFit.fill,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                          child: Container(
                            width: 350,
                            height: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/ppr.png",fit: BoxFit.fill,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                          child: Container(
                            width: 350,
                            height: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/ctu.png",fit: BoxFit.fill,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 10.0),
                          child: Container(
                            width: 350,
                            height: 200,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                            child: Image.asset("assets/images/jtc.png",fit: BoxFit.fill,),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Container(
              width: 400,
              height: 310,
              color: Colors.white,
              child: const Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(radius: 30,child: FaIcon(FontAwesomeIcons.peopleGroup,size: 30,),),
                    title: Text("Avoid Queues",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Text("Book online in simple steps",style: TextStyle(fontSize: 20,color: Colors.grey)),
                  ),
                  ListTile(
                    leading: CircleAvatar(radius: 30,child: FaIcon(FontAwesomeIcons.locationCrosshairs,size: 30,),),
                    title: Text("Track Your Bus",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Text("Get the live location of your bus before boarding",style: TextStyle(fontSize: 20,color: Colors.grey)),
                  ),
                  ListTile(
                    leading: CircleAvatar(radius: 30,child:FaIcon(FontAwesomeIcons.circleUser,size: 30,),),
                    title: Text("24*7 Customer Support",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    subtitle: Text("Travel worry free with 24x7 customer support",style: TextStyle(fontSize: 20,color: Colors.grey)),
                  ),
                ],
              ),
            ),
        ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
