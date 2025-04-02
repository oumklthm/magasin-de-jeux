import 'package:flutter/material.dart';
import 'package:gomestore/models/game.dart';

class NewestGame extends StatelessWidget {
   NewestGame({super.key});

 final List<Game> games = Game.games();


  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(25),
      child: Column(
        children:  games
        .map((game) => Container(
          padding:const  EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            children:[
              ClipRRect(
              borderRadius: BorderRadius.circular(15),
               child: Image.asset(
                game.icon,
                width: 60,
               ),
              ),
          const    SizedBox(width: 10),
          Expanded(
            child:Column(
                children: [
                  Text(
                    game.name,
                    style:const  TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                       const    SizedBox(width: 5),
                       Row(
                        children: [
                          Column(
                              children: [
                                Text(
                                  game.type,
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.2),
                                ),
                                ),
                             const    Row(
                                  children: [
                                    Icon(Icons.star,
                                    size: 14,
                                    color: Colors.amber,
                                      
                                    ),
                                  Icon(Icons.star,
                                    size: 14,
                                    color: Colors.amber,
                                       ),
                                     Icon(Icons.star,
                                    size: 14,
                                    color: Colors.amber,
                                      
                                    ),
                                  ],
                                ),
                              ],
                          ),
                          Container(
                            padding:const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                              decoration:BoxDecoration(
                                color: const Color(0xFF5F67EA),
                                borderRadius: BorderRadius.circular(5),
                              ), 
                              child: const Text('Install',
                              style: TextStyle(
                                color: Colors.white,
                              ),)
                            ),
                          
                        ],
                       )
                ],
              ),
          ),
              ] ),
        ),
        ).toList()),
    );
  }
}