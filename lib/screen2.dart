import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [
          Container(
              // height: 120,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(25)),
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward)))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: 400,
              height: 350,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200,
                  // height: 320,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [

                      Container(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/5/5b/Green_Book_%282018_poster%29.png',
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_circle_fill,
                                size: 40,
                              ))),
                    ],
                  ),
                ),
              ),
            ),
            Text("Green Book",style: TextStyle(fontSize: 18),),
            Text("2018. 2h 11 min",style: TextStyle(color: Colors.black54),),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child:
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 40,),
                          Icon(Icons.star,color: Colors.blue,),
                          Text("8.3",style: TextStyle(color: Colors.blue,fontSize: 18),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,top: 5.0),
                        child: Text("789797"),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 40,),
                          Icon(Icons.network_cell_rounded,color: Colors.blue,),
                          Text("93",style: TextStyle(color: Colors.black45,fontSize: 18),),
                          Text("%",style: TextStyle(color: Colors.black45,fontSize: 16),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,top: 5.0),
                        child: Text("In Your Taste",style: TextStyle(color: Colors.black45),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 40,),
                          Text("Circle Avatar",style: TextStyle(color: Colors.black45,),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 38.0,top: 5.0),
                        child: Text("Watch",style: TextStyle(color: Colors.black45),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                  color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    title: Text("Watch Online"),
                    trailing: IconButton(icon: Icon(Icons.arrow_downward), onPressed: (){},),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                SizedBox(width: 20,),
              Text("Overview",style: TextStyle(fontSize: 18,color: Colors.yellow,fontWeight: FontWeight.bold),),
              SizedBox(width: 30,),
              Text("Details",style: TextStyle(fontSize: 18,color: Colors.black45,fontWeight: FontWeight.bold),),
                SizedBox(width: 30,),
              Text("Reviews",style: TextStyle(fontSize: 18,color: Colors.black45,fontWeight: FontWeight.bold),),
                SizedBox(width:30,),
              Text("Discussion",style: TextStyle(fontSize: 18,color: Colors.black45,fontWeight: FontWeight.bold),),
              ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Story Line",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                ))
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar:Card(
        elevation: 5,
        color: Colors.white,
        child: Container(
          height: 60,
          child:
          Row(
            children: [
              Expanded(
                child: ListTile(
                title: Text("Rate this Movie"),
                trailing: IconButton(icon: Icon(Icons.star), onPressed: () { },),
                            ),
              ),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
            ],
          ),

        ),
      ),

    );
  }
}
