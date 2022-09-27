import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../widgets/round_image_container.dart';
import '../app_constants/textstyle.dart';

class MusicLibraryScreen extends StatefulWidget {
  const MusicLibraryScreen({Key? key}) : super(key: key);

  @override
  _MusicLibraryScreenState createState() => _MusicLibraryScreenState();
}

class _MusicLibraryScreenState extends State<MusicLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/libscreen.png'), fit: BoxFit.cover),
        ),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (_, i) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'My library',
                            style: TextDimension.style36,
                          ),
                          Expanded(child: Container()),
                          Container(
                              height: 20,
                              width: 20,
                              child: Image(
                                  image: AssetImage('images/notification.png')))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Recently played',
                        style: TextDimension.style18white,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 80,
                        child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return RoundImageContainer(image: 'images/ing.png',);
                            }),
                      ),
                      SizedBox(
                        height: 110,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 17,
                                    width: 15,
                                    child: Image(
                                        image: AssetImage('images/heart.png'))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Favorite tracks',
                                  style: TextDimension.style14white,
                                ),
                                Expanded(child: Container()),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff625E79),
                                  child: Text(
                                    '23',
                                    style: TextDimension.style14white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 17,
                                    width: 15,
                                    child: Image(
                                        image: AssetImage('images/dicon.png'))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Downloads',
                                  style: TextDimension.style14white,
                                ),
                                Expanded(child: Container()),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff625E79),
                                  child: Text(
                                    '12',
                                    style: TextDimension.style14white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 17,
                                    width: 15,
                                    child: Image(
                                        image: AssetImage(
                                            'images/playlisticon.png'))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Playlists',
                                  style: TextDimension.style14white,
                                ),
                                Expanded(child: Container()),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff625E79),
                                  child: Text(
                                    '5',
                                    style: TextDimension.style14white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 17,
                                    width: 15,
                                    child: Image(
                                        image: AssetImage(
                                            'images/playlisticon.png'))),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Albums',
                                  style: TextDimension.style14white,
                                ),
                                Expanded(child: Container()),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xff625E79),
                                  child: Text(
                                    '0',
                                    style: TextDimension.style14white,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
