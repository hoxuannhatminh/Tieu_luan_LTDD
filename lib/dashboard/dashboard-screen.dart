import 'package:flutter/material.dart';
import 'package:personel/utils/widget-model.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[   
        SizedBox.expand(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ) 
        ),
        _dashboardPage()
      ],
    );
  }
}

DraggableScrollableSheet _dashboardPage() {
  return DraggableScrollableSheet(
    initialChildSize: 0.55,
    minChildSize: 0.55,
    maxChildSize: 0.87,
    builder: (BuildContext context, ScrollController scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: SingleChildScrollView(
          controller: scrollController,
            child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment(0.0, 0),
                height: 8.0,
                // color: Colors.black26, 
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: BorderSide(color: Colors.red)
                  ),
                  color: Colors.black12,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {}, 
                  child: null,
                )
              ),
                        
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 60.0,
                          width: 60.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.green,
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                              )
                            )
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 40.0),
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.amber,
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2.0
                            )
                          ),
                        )
                      ]
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: dynamicText("TOM CRUISE", fontSize: 22)
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          child: dynamicText("NHÂN VIÊN", fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black45)
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  
                  Container(
                    // width: 90,
                    // padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0, right: 0),
                    child: Container(
                      // padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          // colors: [Colors.blue, Colors.black45],
                          // begin: FractionalOffset(0, 0),
                          // end: FractionalOffset(0, 1),
                          // stops: [0.0, 1.0],

                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1.0), // 10% of the width, so there are ten blinds.
                          colors: [Colors.deepOrangeAccent, Colors.orange],
                          // colors: [const Color(0xFF999999), const Color(0xFFFFFFEE)], // whitish to gray
                          // colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], // whitish to gray
                          // tileMode: TileMode.repeated,
                        ),
                        // color: Colors.black45,
                        // borderRadius: BorderRadius.circular(10.0),
                        // boxShadow: [
                        //   BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        // ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          // // child: dynamicText(
                          // //   '6',
                          // //   fontSize: 28.0,
                          // //   fontWeight: FontWeight.bold,
                          // //   color: Colors.white
                          // // ),
                          // child: Icon(Icons.compare_arrows, size: 30, color: Colors.white,),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(left: 4, right: 0, bottom: 10),
                        //   child: dynamicText(
                        //     'REIMBURSE',
                        //     fontSize: 12.0,
                        //     fontWeight: FontWeight.bold,
                        //     color: Colors.white
                        //   ),
                        // ),
                        // Container(
                        //   padding: EdgeInsets.only(top: 5, bottom: 10),
                        //   child: dynamicText(
                        //     'WORKING HOURS',
                        //     fontFamily: 'Quicksand',
                        //     color: Colors.grey,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 14.0),
                        // ),
                        

                      ]
                    ),
                    ),
                  ),

                  // Container(
                  //   height: 120,
                  //   width: 80,
                  //   padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0, right: 0),
                  //   child: Container(
                  //     padding: EdgeInsets.all(10),
                  //     decoration: BoxDecoration(
                  //       // gradient: LinearGradient(
                  //       //   // colors: [Colors.blue, Colors.black45],
                  //       //   // begin: FractionalOffset(0, 0),
                  //       //   // end: FractionalOffset(0, 1),
                  //       //   // stops: [0.0, 1.0],

                  //       //   begin: Alignment.topLeft,
                  //       //   end: Alignment(0.8, 1.0), // 10% of the width, so there are ten blinds.
                  //       //   colors: [Colors.deepOrangeAccent, Colors.orange],
                  //       //   // colors: [const Color(0xFF999999), const Color(0xFFFFFFEE)], // whitish to gray
                  //       //   // colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], // whitish to gray
                  //       //   // tileMode: TileMode.repeated,
                  //       // ),
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       boxShadow: [
                  //         BoxShadow(blurRadius: 2.0, color: Colors.grey)
                  //       ]
                  //     ),
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: <Widget>[
                  //       Container(
                  //         padding: EdgeInsets.all(10),
                  //         child: dynamicText(
                  //           '6',
                  //           fontSize: 20.0,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black 
                  //         ),
                  //       ), 
                  //       Container(
                  //         padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  //         child: dynamicText(
                  //           'TIME OFF',
                  //           fontSize: 12.0,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.black
                  //         ),
                  //       ),       
                        
                  //     ]
                  //   ),
                  //   ),
                  // ),

                  Container(
                    width: 120,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0, right: 0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1.0), // 10% of the width, so there are ten blinds.
                          colors: [Colors.deepOrangeAccent, Colors.orange],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          child: Icon(Icons.av_timer, size: 30, color: Colors.white,),
                        ), 
                        Container(
                          padding: EdgeInsets.only(left: 4, right: 4, bottom: 10),
                          child: dynamicText(
                            'TĂNG CA',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),       
                        
                      ]
                    ),
                    ),
                  ),

                  Container(
                    width: 120,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0, right: 0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1.0), // 10% of the width, so there are ten blinds.
                          colors: [Colors.deepOrangeAccent, Colors.orange],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                          child: Icon(Icons.time_to_leave, size: 30, color: Colors.white,),
                        ), 
                        Container(
                          padding: EdgeInsets.only(left: 4, right: 4, bottom: 10),
                          child: dynamicText(
                            'SÔ NGÀY NGHĨ',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),

                      ]
                    ),
                    ),
                  ),

                  Container(
                    width: 120,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 0, right: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1.0), // 10% of the width, so there are ten blinds.
                          colors: [Colors.deepOrangeAccent, Colors.orange],
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Icon(Icons.attach_money, size: 30, color: Colors.white,),
                        ), 
                        Container(
                          padding: EdgeInsets.only(left: 4, right: 4, bottom: 10),
                          child: dynamicText(
                            'LƯƠNG',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),       
                        
                      ]
                    ),
                    ),
                  ),

                ],
              ),
              
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
                  child: Container(
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(blurRadius: 2.0, color: Colors.grey)
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10, right: 50),
                              child: dynamicText(
                                '5H',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),        
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 10,right: 50),
                              child: dynamicText(
                                'GIỜ',
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                            ),
                          ]
                          ),
                        ),

                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10,right: 50),
                              child: dynamicText(
                                '3',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),        
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 10,right: 40),
                              child: dynamicText(
                                'NGÀY / THÁNG',
                                fontFamily: 'Quicksand',
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                            ),
                          ]
                          ),
                        ),

                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: dynamicText(
                                '8 TR',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),        
                            Container(
                              padding: EdgeInsets.only(top: 5, bottom: 10),
                              child: dynamicText(
                                'VNĐ',
                                fontFamily: 'Quicksand',
                                color: Colors.grey,
                                // fontWeight: FontWeight.bold,
                                fontSize: 12.0),
                            ),
                          ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          dynamicText(
                            'THÔNG BÁO',
                            color: Colors.grey,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                          dynamicText(
                            'VIEW ALL',
                            color: Colors.green,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ), 
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.bookmark_border, size: 20, color: Colors.blue,),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // dynamicText(
                                  //   'CHECK IN',
                                  //   color: Colors.blue,
                                  //   fontWeight: FontWeight.bold,
                                  //   fontSize: 16.0,
                                  // ),
                                  dynamicText(
                                    '26/12/2021',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: dynamicText(
                                  'Tăng ca từ 5:30 PM - 9:00 PM',
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  overflow: TextOverflow.fade
                                )
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.bookmark_border, size: 20, color: Colors.blue,),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  dynamicText(
                                    '28/12/2021',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: dynamicText(
                                  'Tiêm vaccin từ 9:00 AM',
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  overflow: TextOverflow.fade
                                )
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.bookmark_border, size: 20, color: Colors.blue,),
                          SizedBox(width: 14),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  dynamicText(
                                    '31/12/2021 09:00 AM',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: dynamicText(
                                  "Đã chuyển tiền lương ",
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  overflow: TextOverflow.fade
                                )
                              ),
                            ],
                          ),
                           
                        ],
                      ),
                    ),

                  ],
                )
              ),

              // Container(
              //   padding: const EdgeInsets.all(20.0),
              //   child: ListView.builder(
              //     itemCount: 3,
              //     itemBuilder: (BuildContext context, int index) { 
              //       return Card(
              //         child: dynamicText("$index"),
              //       );
              //     },
              //   ),
              // ),

            ],
          ),
        ),
      );
    }
  );
}