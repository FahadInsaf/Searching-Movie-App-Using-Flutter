import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Show_Movie_Screen.dart';

class Search_Movie_Screen extends StatefulWidget {
  const Search_Movie_Screen({Key? key}) : super(key: key);

  @override
  State<Search_Movie_Screen> createState() => _Search_Movie_ScreenState();
}

class _Search_Movie_ScreenState extends State<Search_Movie_Screen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    TextEditingController movieController = new TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.only(left: 6,right: 6,bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image:AssetImage("assets/spiderman.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/moviePoster.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/epic.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/king.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/tom.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,

              ),
            ),
            SizedBox(height: height*0.02,),
            Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.red,
                    style:  BorderStyle.solid,
                    width: 2.0
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text("Search Movie",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                )
            ),
            SizedBox(height: height/14,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: movieController,
                decoration: InputDecoration(
                  label: Text("Enter Movie Name"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  )
                ),
              ),
            ),
            SizedBox(height: height/20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                padding: EdgeInsets.all(12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )
              ),
              child: Text("Search",style: TextStyle(fontSize: 18.0),),
              onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Show_Movie_Screen(movieController.text)));

              },
            )

          ],
        ),
      ),
    );
  }
}

