//BT19ECE024
//Apeksha Pandey
//ECE-A
//references: https://www.youtube.com/watch?v=nDIZaDkM31Q
// https://github.com/ezrasandzerbell/Flutter-Pinterest-Staggered-Grid
// https://www.youtube.com/watch?v=EKdAU3l_0gA
// https://www.youtube.com/watch?v=VABcKZLpvyg
// https://codesundar.com/flutter-list-view-example/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hovering/hovering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Pinterest App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ImageTile(),
    );
  }
}

List<String> namePicture1 = [
  'assets/0.jpg',
  'assets/1.jpg',
  'assets/2.jpg',
  'assets/3.jpg',
  'assets/4.jpg',
  'assets/5.jpg',
  'assets/6.jpg',
  'assets/7.jpg',
  'assets/8.jpg',
  'assets/9.jpg',
  'assets/10.jpg',
  'assets/11.jpg',
  'assets/12.jpg',
  'assets/13.jpg',
  'assets/14.jpg',
  'assets/15.jpg',
  'assets/16.jpg',
  'assets/17.jpg',
  'assets/18.jpg',
  'assets/19.jpg',
  'assets/20.gif',
];

class ImageTile extends StatefulWidget {
  @override
  _ImageTileState createState() => _ImageTileState();
}

class _ImageTileState extends State<ImageTile> {
  double level = 1.0;
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefix: Icon(
              Icons.search,
              color: Colors.black,
            ),
            icon: Image.asset(
              "assets/p.jpg",
              height: 30,
              width: 30,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            iconSize: 18,
            focusColor: Colors.black,
            color: Colors.black,
            padding: const EdgeInsets.all(2.0),
            hoverColor: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            iconSize: 18,
            focusColor: Colors.black,
            color: Colors.black,
            padding: const EdgeInsets.all(2.0),
            hoverColor: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.expand_more),
            iconSize: 18,
            focusColor: Colors.black,
            color: Colors.black,
            padding: const EdgeInsets.all(2.0),
            hoverColor: Colors.grey,
            onPressed: () {},
          ),
          HoverButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            color: Colors.black,
            hoverColor: Colors.grey[300],
            child: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onpressed: () {},
          ),
          HoverButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            color: Colors.white,
            hoverColor: Colors.grey[200],
            child: Text(
              "Today",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            onpressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(12),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            crossAxisSpacing: 3,
            mainAxisSpacing: 2,
            itemCount: namePicture1.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: NetworkImage(namePicture1[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: HoverWidget(
                    hoverChild: Container(
                      color: Colors.black54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              /* HoverWidget(
                                  child: Icon(
                                    Icons.download_sharp,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.download_sharp,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),*/

                              HoverButton(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                color: Colors.red,
                                hoverColor: Colors.red[200],
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onpressed: () {},
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              HoverButton(
                                shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                ),
                                color: Colors.white,
                                hoverColor: Colors.grey[200],
                                child: Text(
                                  "URL.com",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onpressed: () {},
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              HoverWidget(
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.share,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                              SizedBox(
                                width: 10,
                              ),
                              HoverWidget(
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                  hoverChild: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white30,
                                  ),
                                  onHover: (event) {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    onHover: (event) {},
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            }),
      ),
    );
  }
}
