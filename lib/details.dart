import 'package:flutter/material.dart';

import 'home.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }
List imgList=[
  "assets/one.jpeg",
  "assets/two.jpeg",
  "assets/three.jpeg",
  "assets/four.jpeg",
  "assets/five.jpeg",
  "assets/six.jpeg",
];
  String  imgstore ='assets/one.jpeg';
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 350,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                           // imgstore ==''?'assets/one.jpeg':
                            imgstore,
                            fit: BoxFit.fill,
                            width: 370,
                          height: 250,
                        ),
                        SizedBox(
                          height: 100,
                          width: 500,
                          child: ListView.builder(
                            padding: EdgeInsets.all(10),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: imgList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: (){
                                  setState(() {
                                    imgstore = imgList[index];
                                    print("hellk ${imgstore}");
                                  });
                                },
                                child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    height: 100,
                                    width: 100,
                                    child: Image.asset(imgList[index]

                                    )),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 400,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.black,
                  labelPadding: EdgeInsets.only(left: 20, right: 20),
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'PHOTOS'),
                    Tab(text: 'VIDEO'),
                    Tab(text: '360 VIDEOS'),
                    Tab(text: 'COMPLEX'),
                    Tab(text: 'ABC'),
                    Tab(text: 'ABC'),
                  ],
                ),
              ),
              Container(
                height: 600,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Pavillion complex',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    'TYPE 9',
                                    style: TextStyle(
                                        letterSpacing: 5,
                                        wordSpacing: 5,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Gujarat,India',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  size: 15,
                                  color: Colors.deepOrange,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '23, appoinment pending',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: double.maxFinite,
                                    child: Text(
                                      'A paraphrase (or paraphrasing) is a restatement of another piece of writing with new words or phrA paraphrase (or paraphrasing) is a restatement of another piece of writing with new words or phrases while keeping the same meaning, usually to modify the language or simply avoid plagiarism',
                                      maxLines: 5,
                                      style: TextStyle(
                                          wordSpacing: 5,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Features',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  width: 120,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.yellow.shade600,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "SCHEDULE GUIDE->",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 300,
                                  child: GridView.count(
                                    crossAxisCount: 2,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.blueGrey.shade50,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  child: Icon(
                                                Icons.houseboat,
                                                size: 100,
                                                color: Colors.grey,
                                              )),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Luxury",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "Aminites",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.blueGrey.shade50,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  child: Icon(
                                                Icons.bathtub_outlined,
                                                size: 100,
                                                color: Colors.grey,
                                              )),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "2 Complementry",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "Equiped Baths ",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.blueGrey.shade50,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  child: Icon(
                                                Icons.garage,
                                                size: 100,
                                                color: Colors.grey,
                                              )),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Garage",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "Included ",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.blueGrey.shade50,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  child: Icon(
                                                Icons.event_seat,
                                                size: 100,
                                                color: Colors.grey,
                                              )),
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Mordern",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "Furniture ",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.grey),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                        child: Text(
                      "hi",
                      style: TextStyle(fontSize: 25),
                    )),
                    Center(
                        child: Text("this ", style: TextStyle(fontSize: 25))),
                    Center(child: Text("is ", style: TextStyle(fontSize: 25))),
                    Center(child: Text("me", style: TextStyle(fontSize: 25))),
                    Center(child: Text("me", style: TextStyle(fontSize: 25))),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
