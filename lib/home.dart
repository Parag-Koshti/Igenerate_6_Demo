import 'package:flutter/material.dart';
import 'package:igenerate_6/details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search_rounded,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          title: Text(
            "Best picks",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.w900),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                            alignment: AlignmentDirectional.topCenter,
                            height: 270,
                            child: PageView.builder(
                                controller:
                                    PageController(viewportFraction: 0.9),
                                itemCount: 5,
                                itemBuilder: (_, i) {
                                  return Stack(
                                    children: [
                                      Container(
                                        height: 180,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image:
                                                    AssetImage("assets/one.jpeg"),
                                              )),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            alignment:
                                                AlignmentDirectional.topStart,
                                            child: ElevatedButton(
                                              onPressed: () {},
                                              child: Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.white),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                padding: EdgeInsets.all(0),
                                                backgroundColor: Colors
                                                    .transparent, // <-- Button color
                                                foregroundColor: Colors
                                                    .grey, // <-- Splash color
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 150, left: 30, bottom: 10),
                                        child: Container(
                                          decoration: new BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            boxShadow: [
                                              new BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 10.0,
                                              ),
                                            ],
                                          ),

                                          height: 200, width: 255,
                                          //color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 10, 10, 0),
                                            child: Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "\$ 320000",
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                  Text(
                                                    "Furniture Design",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.blueGrey),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        size: 10,
                                                      ),
                                                      Text(
                                                        "The mainAxisAlignment, main",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.grey),
                                                        maxLines: 1,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 9,
                                                  ),
                                                  Text(
                                                    "T,he mainAxisAlignment, mainT,he mainAxisAlignment, mainT,he mainAxisAlignment, main ",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey),
                                                    maxLines: 2,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 125, left: 200, bottom: 30),
                                        child: Container(
                                          child: ElevatedButton(
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (Context) =>
                                                          Details()))
                                            },
                                            child: Icon(
                                              Icons.send,
                                              size: 22,
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(12),
                                              backgroundColor: Colors.yellow
                                                  .shade600, // <-- Button color
                                              foregroundColor: Colors.white, //
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                })),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text(
                      "Trending",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "VIEW ALL",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0,left: 15),
                child: SizedBox(
                  height: 180,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8,bottom: 8,right: 2),
                        child: Container(
                          height: 100,
                          width: 160,
                          color: Colors.white,
                          child: Stack(
                            //      crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  height: 170,
                                  width: 160,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage('assets/one.jpeg')),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "\$ 2,300 / months",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  size: 10,
                                                  color: Colors.grey,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  "Ahmedabad,Gujarat",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.grey),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Icon(Icons.favorite_border_outlined,
                                        color: Colors.white),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(0),
                                      backgroundColor:
                                          Colors.transparent, // <-- Button color
                                      foregroundColor:
                                          Colors.transparent, // <-- Splash color
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: Image(
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 100,
                                    image: AssetImage("assets/one.jpeg")),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Interior",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 8, right: 8, bottom: 8),
                                  child: Container(
                                    width: 200,
                                    child: Text(
                                      "Discover little secrets for successfully interior design",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 0, left: 8, right: 8, bottom: 8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.remove_red_eye,
                                          size: 15, color: Colors.grey),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "4.5k",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.favorite,
                                          size: 15, color: Colors.grey),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "916",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
