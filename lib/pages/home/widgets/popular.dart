import 'package:flutter/material.dart';
import 'package:gomestore/models/game.dart';
import 'package:gomestore/pages/detail/detail.dart';

class PopulerGame extends StatelessWidget {
   PopulerGame({super.key});


 final List<Game> games = Game.games();


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder:((context , index ) => GestureDetector(
        //   onTap: () => print('on tap'),
          onTap: () => Navigator.of(context).push
          (MaterialPageRoute(builder: ((context)  => 
          DetailPage(games[index])),
          ),),
          child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
            ),
              child: Container(
                padding: EdgeInsets.all(5),
                
                child:ClipRRect (
                  borderRadius: BorderRadius.circular(15),
                  child:Image.asset(games[index].bgImage)),
              ),
            
              ),
             )),

          separatorBuilder: ((context , inedx) => const SizedBox(width: 10,)),
           itemCount: games.length)
       
        
    );
  }
}