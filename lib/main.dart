import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
// import 'package:image_downloader/image_downloader.dart';

import 'list_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String url = 'http://103.176.149.253:8088/';

  ListImage? imageData;

  RootIsolateToken rootIsolateToken = RootIsolateToken.instance!;

  List<List<DowloadItem>> listSticker = [];

  Future<void> fetchDataFromAPI() async {
    final response = await http
        .get(Uri.parse("http://103.176.149.253:8088/list_image_sticker"));
    if (response.statusCode == 200) {
      setState(() {
        imageData = ListImage.fromJson(jsonDecode(response.body));
        listSticker.addAll([
          imageData!.christmas,
          imageData!.mouth,
          imageData!.eye,
          imageData!.beard,
          imageData!.hat,
          imageData!.glasses,
          imageData!.talking,
          imageData!.other,
          imageData!.meme,
          imageData!.brow,
          imageData!.necklace,
        ]);
        print("list stickers ${listSticker}");
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  List<String> itemsNew = [];

  void downloadSticker(int x, int y) async {
    if (Platform.isAndroid) {
      Directory? dir = await getExternalStorageDirectory();
      final file = File(
          '${dir!.path}/${listSticker[x][y].linkNetwork.toString().split("/").last}');
      print(
          'save : ${dir.path}/${listSticker[x][y].linkNetwork.toString().split("/").last}');
      if (file.existsSync()) {
        itemsNew.add(file.path);
      } else {
        final http.Response response = await http.get(Uri.parse(
            '$url${listSticker[x][y].linkNetwork}'));
        await file.writeAsBytes(response.bodyBytes);
        itemsNew.add(file.path);
      }
      print("File path: ${itemsNew}");
    } else if (Platform.isIOS) {
      Directory? dir = await getApplicationDocumentsDirectory();
      final file = File(
          '${dir.path}/${listSticker[x][y].linkNetwork.toString().split("/").last}');
      if (file.existsSync()) {
        itemsNew.add(file.path);
      } else {
        itemsNew.add(file.path);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API List'),
        ),
        body: listSticker == null
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: listSticker.length,
                itemBuilder: (context, index) {
                  return _buildListItem(listSticker[index], index);
                },
              ),
      ),
    );
  }

  Widget _buildListItem(List<DowloadItem> items, int x) {
    return GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          mainAxisExtent: 71,
          childAspectRatio: 1.9,
        ),
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            width: 50,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(8),
            //   color: Colors.transparent,
            //   image: DecorationImage(
            //     image: Svg
            //   ),
            // ),
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Image.network('http://103.176.149.253:8088/${items[index].linkNetwork}'),
                GestureDetector(
                  onTap: (){
                    downloadSticker(x, index);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black38, shape: BoxShape.circle),
                    child: const Center(
                      child: Text('tải'),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
