// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class firstCourse extends StatefulWidget {
//   const firstCourse({super.key,required this.particularUrl});

//   final String? particularUrl;

//   @override
//   State<firstCourse> createState() => _firstCourseState();
// }

// class _firstCourseState extends State<firstCourse> {
//   late YoutubePlayerController controller;
  
//   // get particularUrlss => particularUrlss;

//   @override
//   void initState() {
//     super.initState();

//     const url =
//         // particularUrlss ??'https://www.youtube.com/watch?v=dO75clFUDC8&ab_channel=PierrePoilievre';
//         particularUrl.toString();

//     controller = YoutubePlayerController(
//         initialVideoId: YoutubePlayer.convertUrlToId(url)!,
//         flags: const YoutubePlayerFlags(
//           mute: false,
//           loop: false,
//           autoPlay: true,
//         ));
//   }

//   @override
//   void deactivate() {
//     controller.pause();

//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => YoutubePlayerBuilder(
//       player: YoutubePlayer(
//         controller: controller,
//       ),
//       builder: (context, player) => Scaffold(
//             appBar: AppBar(
//               title: const Text("Youtube Player"),
//             ),
//             body: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                       elevation: 30,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30)
//                         ),
//                         child: player),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   // ElevatedButton(
//                   //     onPressed: () {
//                   //       const url =
//                   //           'https://www.youtube.com/watch?v=dO75clFUDC8&ab_channel=PierrePoilievre';
//                   //       controller.load(YoutubePlayer.convertUrlToId(url)!);
//                   //       controller.toggleFullScreenMode();
//                   //     },
//                   //     child: const Text("Full Screen"),                      
//                   //     ),
//                    Padding(
//                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
//                      child: Column(
//                       children: [
//                       Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
                       
//                       ],
//                      ),
//                    )
//                 ],
//               ),
//             ),
//           ));
// }






import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class FirstCourse extends StatefulWidget {
  final String particularUrl;

  const FirstCourse({Key? key, required this.particularUrl}) : super(key: key);

  @override
  State<FirstCourse> createState() => _FirstCourseState();
}

class _FirstCourseState extends State<FirstCourse> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    // Use the URL passed as a parameter to initialize the controller
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.particularUrl)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            title: const Text("Video Player"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: player,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                // ... Rest of your UI ...
              ],
            ),
          ),
        ),
      );
}
