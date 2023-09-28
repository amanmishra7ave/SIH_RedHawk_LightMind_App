import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';

class DocumentHomeScreen extends StatefulWidget {
  const DocumentHomeScreen({Key? key}) : super(key: key);

  @override
  _DocumentHomeScreenState createState() => _DocumentHomeScreenState();
}

class _DocumentHomeScreenState extends State<DocumentHomeScreen> {
  FilePickerResult? result;
  String? _fileName;
  PlatformFile? pickedfile;
  bool isLoading = false;
  File? fileToDisplay;

  void pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: false);

      if (result != null) {
        _fileName = result!.files.first.name;
        pickedfile = result!.files.first;
        fileToDisplay = File(pickedfile!.path.toString());

        print('File name $_fileName');
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  final List<PlatformFile> selectedFiles = [];

  // Future<String?> pickFolder() async {
  //   final Directory? directory = await getApplicationDocumentsDirectory();
  //   if (directory != null) {
  //     return directory.path;
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
    
      body: Column(
        children: [
          Expanded(
  child: SizedBox(
    height: 400, // Set a specific height here
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: selectedFiles.length,
      itemBuilder: (context, index) {
        if (index < selectedFiles.length) {
          final file = selectedFiles[index];
          final extension = file.extension?.toLowerCase();

          if (extension == 'jpg' ||
              extension == 'pdf' ||
              extension == 'jpeg' ||
              extension == 'png') {
            return Column(
              children: [
                Image.file(
                  File(file.path ?? ""),
                  width: 305,
                  height: 300,
                ),
                Text(
                  file.name ?? 'Unknown File',
                  style: TextStyle(),
                ),
              ],
            );
          }
        } else {
          return Column(
            children: [
              Icon(Icons.description, size: 100),
              Text(
                fileToDisplay?.path ?? 'Cool',
              ),
            ],
          );
        }
      },
    ),
  ),
),

          Container(
            height: 40,
            width: 35,
            // child:Image.file(fileToDisplay!)
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Show BottomSheet'),
              onPressed: () {
                showModalBottomSheet<void>(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,

                  // shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(13)),
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 330,
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              // Expanded(
                              //   child: Column(
                              //     children: [
                              //       const Text(
                              //         "Add folder",
                              //         style: TextStyle(
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 20),
                              //       ),
                                    // SizedBox(height: 20),
                                    // Image.asset("images/Rectangle 244.png"),
                                    // Container(
                                    //   width: 160,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(15),
                                    //     border: Border.all(color: Colors.grey),
                                    //     color:
                                    //         Color.fromARGB(255, 238, 238, 238),
                                    //   ),
                                    //   child: const Column(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.center,
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.center,
                                    //     children: [
                                    //       Text(
                                    //         "Folder name",
                                    //         style: TextStyle(
                                    //             fontSize: 20,
                                    //             color: Colors.grey),
                                    //       ),
                                    //     ],
                                    //   ),

                                      // ),
                                      // Container(
                                      //   width: 160,
                                      //   height: 50,
                                      //   child: TextField(
                                      //     decoration: InputDecoration(
                                      //         filled: true,
                                      //         fillColor: Color.fromARGB(
                                      //             255, 238, 238, 238),
                                      //         border: OutlineInputBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(15)),
                                      //         hintText: 'Folder name'),
                                      //   ),
                                    // ),
                                    // Container(
                                    //   width: 160,
                                    //   height: 40,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(10),
                                    //     border: Border.all(color: Colors.grey),
                                    //     color:
                                    //         Color.fromARGB(255, 238, 238, 238),
                                    //   ),
                                    //   child: const Column(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.center,
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.center,
                                    //     children: [
                                    //       Text(
                                    //         "Folder name",
                                    //         style: TextStyle(
                                    //             fontSize: 17,
                                    //             color: Colors.grey),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   height: 15,
                                    // ),
                                    // TextButton(
                                    //     onPressed: () async {
                                    //       final result = await FilePicker
                                    //           .platform
                                    //           .pickFiles(
                                    //         allowMultiple: true,
                                    //       );
                                    //       if (result != null) {
                                    //         setState(() {
                                    //           selectedFiles
                                    //               .addAll(result.files);
                                    //         });
                                    //       }
                                    //     },
                                    //     style: TextButton.styleFrom(
                                    //       // shape: CircleBorder(),
                                    //       shape: const BeveledRectangleBorder(
                                    //           borderRadius: BorderRadius.all(
                                    //               Radius.circular(5))),

                                    //       fixedSize: Size(130, 40),
                                    //       backgroundColor: Colors.blue,
                                    //       primary: Colors.white,
                                    //     ),
                                    //     child: Text("Add new"))
                              //     ],
                              //   ),
                              // ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              // VerticalDivider(
                              //   color: const Color.fromARGB(255, 226, 225, 225),
                              //   thickness: 1,
                              // ),
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Text(
                                      "Upload file",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(height: 20),
                                    // Image.asset("images/Rectangle 245.png"),
                                    Container(
                                      width: 160,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey),
                                        color:
                                            Color.fromARGB(255, 238, 238, 238),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "File name",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          final result = await FilePicker
                                              .platform
                                              .pickFiles(
                                            allowMultiple: true,
                                          );
                                          if (result != null) {
                                            setState(() {
                                              selectedFiles
                                                  .addAll(result.files);
                                            });
                                          }
                                        },
                                        style: TextButton.styleFrom(
                                          // shape: CircleBorder(),
                                          shape: const BeveledRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5))),

                                          fixedSize: Size(130, 40),
                                          backgroundColor: Colors.blue,
                                          primary: Colors.white,
                                        ),
                                        child: Text('Select file'))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}