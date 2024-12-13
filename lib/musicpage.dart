// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:hustleapp/controllers/player_controller.dart';
// import 'package:get/get.dart';
// import 'package:on_audio_query/on_audio_query.dart';

// class MusicPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     var controller = Get.put(PlayerController());
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor:Colors.black,
//         actions:[
//           IconButton(onPressed: () {}, icon:const Icon(Icons.search,color:Colors.white)),
//         ],
//         leading: const Icon(Icons.sort_rounded,color:Colors.white),
//         title:Text('Music',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.white),),
        
//       ),
//       body:FutureBuilder<List<SongModel>>
//       (future: controller audioQuery.querySongs(
//         ignoreCase: true,
//         OrderType:OrderType.ASC_OR_SMALLER,
//         sortType: null,
//         uriType:UriType.EXTERNAL
//       ),
//       builder:(BuildContext context,
//       if(snapshot.data ==null){
//         return Center(child:CircularProgressIndicator()
//         );
//       } else if (snapshot.data!.isEmpty) {
//         return Center(
//           child:Text('No Songs Found',style:TextStyle(
//             FontWeight:FontWeight.bold,color:Colors.white
//           ),
//           ),
//         );
//       }else{
//         return Padding(
//           padding:const EdgeInsets.all(8),
//           child:ListView.builder(
//             physics: const BouncingScrollPhysics(),
//             itemCount:100,
//             itemBuilder:(BuildContext context,int index ){
//               return Container(
//                 margin: const EdgeInsets.only(bottom:4),
//                 child:ListTile(
//                   shape:RoundedRectangleBorder(BorderRadius.circular(12),
//                   tileColor:Colors.black,
//                   title:Text(
//                     "Music Name",
//                     style:TextStyle(fontsize:15),
//                   ),
//                   subtitle:Text(
//                     "Artist Name",style:TextStyle(fontSize:10),
//                   ),
//                   leading:const Icon(
//                     Icons.music_note,
//                     color:Colors.white,
//                     size:32,
//                   ),
//                   trailing: const Icon(Icons.play_arrow,
//                   color:Colors.white,
//                   size:25),
//                   ),
//                 );            
//             },
//           ),

//         );
//       },
//   },
//       ),
      
      
//        }
//     );
  
