import 'package:flutter/material.dart';

import 'appoinmentrequest.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {


  final List item=[
  {
    'image':'assets/images.jpg',
  'title':'Dorothy Nesion',
  'subtitle': '09 jan 2020, 8am-10am',
},
    {
      'image': 'assets/img.jpg',
      'title':'Carl Pope',
      'subtitle': '09 jan 2020, 8am-10am',
    },
    {
      'image': 'assets/garden.jpg',
      'title':'Ora Murray',
      'subtitle': '09 jan 2020, 8am-10am',
    },
    {
      'image': 'assets/imagess.jpg',
      'title':'Dorothy Nesion',
      'subtitle': 'Valid till 31 oct 2021',
    },
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
            Row(
              children: const [
                Icon(Icons.menu),
                Spacer(),
                Icon(Icons.add_card)
              ],
             ),
               const SizedBox(height: 30),
               Text('Welcome Back!',style: TextStyle(color: Colors.grey[500],
                 fontSize: 18,fontWeight: FontWeight.bold,
               ),
               ),
               const SizedBox(height: 15),
               const Text('Dr. Peterson',style: TextStyle(color: Colors.black,
                 fontSize: 25,fontWeight: FontWeight.bold,
               ),
               ),const SizedBox(
                 height: 20,
               ),
               Container(
                 decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                   color: Colors.white,
               ),
                 child: Column(
                   children: [
                     Container(padding: const EdgeInsets.all(20),
                       decoration: const BoxDecoration(
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                         color: Colors.blue,
                       ),
                       child: Column(
                         children: [
                           Row(
                             children: const [
                               Text('Appoinment Request',style: TextStyle(
                                 fontSize: 15,
                                 color: Colors.white,
                               )),Spacer(),
                               Icon(Icons.more_vert,color: Colors.white),
                             ],
                           ),
                           Row(
                             children: const [
                               Icon(Icons.access_time_rounded,color: Colors.white,),
                               Text('12 jan 2020, 8am-10am',style: TextStyle(
                                 color: Colors.white,fontSize: 17,
                               ),),
                             ],
                           ),
                         ],
                       ),
                     ),
                     Container(padding: const EdgeInsets.all(20),
                       child: Column(
                         children: [
                           Row(
                             children: [
                               ClipRRect(borderRadius: BorderRadius.circular(10),
                                   child: Image.asset('assets/imagess.jpg',
                                       fit: BoxFit.cover,
                                       height: 50,
                                       width: 50)
                               ),
                               const SizedBox(width: 8),
                               Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: const [
                                   Text('Louis'),
                                   Text('Patterson'),
                                 ],
                               ),
                               const Spacer(),
                               Icon(Icons.info_outlined,size: 28,color: Colors.blue[300],)
                             ],
                           ),
                           const SizedBox(height: 20),
                           Row(
                             children: [
                               InkWell(onTap: () {
                                 Navigator.push(
                                     context, MaterialPageRoute(builder: (context)=> const AppoinmentRequest()
                                 ));
                               },
                                 child: Container(
                                   padding: const EdgeInsets.all(10),width: 170,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),color: Colors.blue
                                   ),
                                   child: const Center(child: Text('ACCEPT')),
                                 ),
                               ),
                               const Spacer(),
                               Container(
                                 width: 100,
                                 padding: const EdgeInsets.all(10),
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),color: Colors.grey[300]
                                 ),
                                 child: const Center(child: Text('DECLINE')),
                               )
                             ],
                           )
                         ],
                       ),
                     )
                   ],
                 ),

               ),
               const SizedBox(height: 20),
               const Text('Next Appointments.',style: TextStyle(
                 color: Colors.black,
                 fontSize: 12,
               ),
               ),
               const SizedBox(
                 height: 10,
               ),
               SizedBox(
                 width: double.infinity,
                 height: 330,
                 child: ListView.builder(scrollDirection: Axis.vertical,
                     itemCount: item.length,
                     itemBuilder: (context, index) {
                       return Container(
                         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         margin: const EdgeInsets.symmetric(vertical: 5),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),color: Colors.white,
                         ),
                         height: 70,
                         child: Row(
                           children: [
                             ClipRRect(borderRadius: BorderRadius.circular(20),
                                 child: Image.asset((item[index]['image']),fit: BoxFit.cover,height: 55,width: 55,)),
                             const SizedBox(width: 10),
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(item[index]['title']),
                                 const SizedBox(height: 5),
                                 Text(item[index]['subtitle']),
                               ],
                             ),
                             const Spacer(),
                             const Icon(Icons.more_vert),
                           ],
                         ),
                       );
                 }),
               )
            ],
            ),
          ),
        ),
      ),
    );
  }
}


