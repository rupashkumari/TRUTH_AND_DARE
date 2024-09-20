import 'package:flutter/material.dart';
import 'package:truth/p_q1.dart';

class Paranoia extends StatelessWidget {
  const Paranoia({Key? key}) : super(key:key);
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: getAppBar(),
    body: getBody(context),
       backgroundColor: const Color.fromARGB(255, 250, 203, 203),
   );
     } 

    Container getBody(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.height ,
      height: MediaQuery.of(context).size.height ,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
           width: MediaQuery.of(context).size.width/1.2 ,
           height: 250,
            child: const Center(
                              child: Text(
                                ' Who is most likely to end\n up on a reality TV show?',
                                style: TextStyle(color: Color.fromARGB(255, 8, 0, 0),fontSize: 25,fontStyle: FontStyle.italic),
                                )
                                ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(10),

       ),
          ),
       const  SizedBox(
          height: 70,
        ) ,
       
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
              ]
          ),
           GestureDetector(
             onTap: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const PQ1())) ,
                child:
                 Container(
                    decoration: BoxDecoration(
                      color:  const Color.fromRGBO(229, 121, 114, 1),
                       borderRadius: BorderRadius.circular(20),
                    ),
                   width: (MediaQuery.of(context).size.width/2)-35 ,
                             height: 50, 
                             child: const Center(
                              child: Text(
                                'NEXT ',
                                style: TextStyle(color: Colors.black,fontSize: 20),
                                )
                                ), 
           ),
           ),
              ],
                             
       
             ),
     );
   
   
  }
  
  getAppBar() {
     return AppBar(
      backgroundColor: const Color.fromRGBO(229, 121, 114, 1),
      elevation: 0.0,
      iconTheme: const IconThemeData(color: Colors.white),
      title: const Text('PARANOIA'),
      centerTitle: true,
    );
  }
}