import 'package:flutter/material.dart';
import '../ApiConfig/ApiConfig.dart';
import '../models/Movie.dart';

class Show_Movie_Screen extends StatefulWidget {
  String movieTitle;
  Show_Movie_Screen(this.movieTitle);

  @override
  State<Show_Movie_Screen> createState() => _Show_Movie_ScreenState();
}

class _Show_Movie_ScreenState extends State<Show_Movie_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: FutureBuilder(
          future: ApiConfig.getMovieDB(widget.movieTitle),
          builder: (context, snapshot)
          {
            Movie m = snapshot.data as Movie;
            if(m.response == "False")
            {
              return Center(child: Text("No Movie Found In Database",style: TextStyle(color: Colors.indigo,fontSize: 23.0),),);
            }
            else
            {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Image.network(m.poster!),


                    )  ,
                    SizedBox(height: 10.0,),
                    Text("Movie Name : "+m.title!,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                    SizedBox(height: 10.0,),
                    Text("Director : "+m.director!),

                    SizedBox(height: 10.0,),
                    Text("Actor's : "+m.actors!),

                    SizedBox(height: 10.0,),
                    Text("Movie Release : "+m.year!),

                    SizedBox(height: 10.0,),
                    Text("Award : "+m.awards!),

                    SizedBox(height: 10.0,),
                    Text("Box office : "+m.boxOffice!),

                    SizedBox(height: 10.0,),
                    Text(m.plot!),

                  ],
                ),
              );
            }

          }
      ),
    );
  }
}

