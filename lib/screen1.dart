import 'package:flutter/material.dart';

class screen_one extends StatelessWidget {
  screen_one({super.key});
  var appImage = ["Image1", "Image2", "Image3", "Image4", "Image5", "Image6"];
  var appText = ["Chinese", "Italian", "Maxican", "Thai", "Dessert", "Drinks"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cook Studio"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          Container(
              height: 200,
              // width: double.maxFinite,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Colors.orange,
              ),
              child: Column(
                children: [
                  Text(
                    "Welcome To ",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Cook Studio",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 6, mainAxisSpacing: 6),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19)),
                        child: Column(
                          children: [
                            Text(appImage[index]),
                            Text(
                              appText[index],
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 6,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(
                    Icons.local_drink_sharp,
                    size: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(
                    Icons.heart_broken,
                    size: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
