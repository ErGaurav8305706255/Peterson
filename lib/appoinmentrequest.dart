import 'package:flutter/material.dart';
import 'package:peterson/welcomepage.dart';
class AppoinmentRequest extends StatefulWidget {
  const AppoinmentRequest({Key? key}) : super(key: key);

  @override
  State<AppoinmentRequest> createState() => _AppoinmentRequestState();
}

class _AppoinmentRequestState extends State<AppoinmentRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Louis \nPatterson',style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height: 30),
                    const Text('Comment:'),
                    const SizedBox(height: 10),
                    const Text('Hello Dr. Petersion,',style: TextStyle(
                      fontWeight: FontWeight.bold
                    )),
                    const Text('I going to bring my complete blood count analysis with me',style: TextStyle(
                      fontWeight: FontWeight.bold
                    )),
                    const SizedBox(height: 20),
                    Container(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      height: 60,
                      decoration: BoxDecoration(
                        border: const Border(left: BorderSide(color: Colors.cyan,width: 5)),
                        color: Colors.cyanAccent[100],
                    ),
                      child: Row(
                        children: [
                          const Icon(Icons.attachment_outlined,color: Colors.cyan,),
                          const SizedBox(width: 10),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Complete blood count',style: TextStyle(fontWeight: FontWeight.bold),),
                              Text('05 Mar 2020'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                height: 300,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
                  color: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context)=> const WelcomePage()
                        ));
                      },
                          child: const Icon(Icons.arrow_back,color: Colors.white,)),
                      const SizedBox(width: 20),
                      const Text('Appoinment Request',
                          style: TextStyle(
                        color: Colors.white,fontSize: 15,
                      )),
                      const Spacer(),
                      const Icon(Icons.more_vert,color: Colors.white,)
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text('12 Jan 2022, 8am-10am',
                      style: TextStyle(
                      fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,
                    ),),
                  ),
                ],
              ),
              ),
              Positioned(
               top: 260,left: 60,
                child: Row(
                  children: [
                    Container(
                      height: 80,width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Colors.white,spreadRadius: 5),
                          ],
                          image: const DecorationImage(
                        image: AssetImage('assets/imagess.jpg'),fit: BoxFit.cover,
                      )
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: const [
                            BoxShadow(color: Colors.white,spreadRadius: 5),
                          ],
                          image: const DecorationImage(
                        image: AssetImage('assets/images.jpg'),fit: BoxFit.cover,
                      )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),

      bottomNavigationBar: Container(color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Row(
          children: [
            InkWell(onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> const WelcomePage()
              ));
            },
              child: Container(
                  padding: const EdgeInsets.all(15),
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.blue
                  ),
                  child: const Text('ACCEPT',textAlign: TextAlign.center,)),
            ),
            const Spacer(),
            Container(
                width: 120,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.grey[300]
                ),
                child: const Text('DECLINE',textAlign: TextAlign.center,)),
          ],
        ),
      ),

    );
  }
}
