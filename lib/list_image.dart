// class ListImage {
//   int? status;
//   List<String>? result;
//   List<String> talking = [];
//   List<String> emoji= [];
//   List<String> beard = [];
//   List<String> brow = [];
//   List<String> eye = [];
//   List<String> glasses = [];
//   List<String> hat = [];
//   List<String> meme = [];
//   List<String> mouth = [];
//   List<String> necklace = [];
//   List<String> other = [];
//
//   ListImage({this.status, this.result});
//
//   ListImage.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     result = json['result'].cast<String>();
//     if(result != null){
//       emoji = [];
//       result!.forEach((element) {
//         if(element.length>27 &&  element.substring(0,27) == "static/sticker/icons/emoji/"){
//           emoji.add(element);
//           print(element);
//         }
//       });
//     }
//     if(result != null){
//       talking = [];
//       getForderObject(result!);
//       if(result != null){
//         beard = [];
//         result!.forEach((element) {
//           if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//             if (element.length>34 && element.substring(29,34) == getForderObject(result!).first){
//               beard.add(element);
//               print(element);
//             }
//           }
//         });
//       }
//     }
//     // if(result != null){
//     //   beard = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>34 && element.substring(29,34) == "beard"){
//     //         beard.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   brow = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>33 && element.substring(29,33) == "brow"){
//     //         brow.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   eye = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>32 && element.substring(29,32) == "eye"){
//     //         eye.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   glasses = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>36 && element.substring(29,36) == "glasses"){
//     //         glasses.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   hat = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>32 && element.substring(29,32) == "hat"){
//     //         hat.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   meme = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>33 && element.substring(29,33) == "meme"){
//     //         meme.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   mouth = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>34 && element.substring(29,34) == "mouth"){
//     //         mouth.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   necklace = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>37 && element.substring(29,37) == "necklace"){
//     //         necklace.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//     // if(result != null){
//     //   other = [];
//     //   result!.forEach((element) {
//     //     if(element.length>29 &&  element.substring(0,29) == "static/sticker/icons/sticker/"){
//     //       if (element.length>34 && element.substring(29,34) == "other"){
//     //         other.add(element);
//     //         print(element);
//     //       }
//     //     }
//     //   });
//     // }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['result'] = this.result;
//     return data;
//   }
//
//   List<String> getForderObject(List<String> result){
//     List<String> object = [];
//     result.forEach((element) {
//       if(element.length>29 &&  element.substring(0,29) == "static/sticker/images/object/"){
//         String str = element.substring(29);
//         String first = str.split("/").first;
//         if(object.indexOf(first)==-1 && str.split("/").length > 1 ){
//           object.add(first);
//         }
//       }
//     });
//     print("list object: ${object}");
//     return object;
//   }
// }

class DowloadItem{
  String linkNetwork;
  String? filePath;
  DowloadItem({required this.linkNetwork});
}

class ListImage {
  int? status;
  // Result? result;
  List<DowloadItem> emoji = [];
  List<DowloadItem> beard = [];
  List<DowloadItem> brow = [];
  List<DowloadItem> christmas = [];
  List<DowloadItem> eye = [];
  List<DowloadItem> glasses = [];
  List<DowloadItem> hat = [];
  List<DowloadItem> meme = [];
  List<DowloadItem> mouth = [];
  List<DowloadItem> necklace = [];
  List<DowloadItem> other = [];
  List<DowloadItem> talking = [];
  List<DowloadItem> dailyGirl = [];
  List<DowloadItem> daily = [];
  List<DowloadItem> noelGirl = [];
  List<DowloadItem> noel = [];
  List<DowloadItem> panda = [];
  List<DowloadItem> taylorSwift = [];
  ListImage({
    this.status,
    // this.result,
  });

  ListImage.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    // result = json['result'] != null ? new Result.fromJson(json['result']) : null;
    List<String> dataEmoji = json['result']['icons']['emoji'] != null ? json['result']['icons']['emoji'].cast<String>() : null;
    List<String> dataBeard = json['result']['images']['object']['beard'] != null ? json['result']['images']['object']['beard'].cast<String>() : null;
    List<String> dataBrow = json['result']['images']['object']['brow'] != null ? json['result']['images']['object']['brow'].cast<String>() : null;
    List<String> dataChristmas = json['result']['images']['object']['christmas'] != null ? json['result']['images']['object']['christmas'].cast<String>() : null;
    List<String> dataEye = json['result']['images']['object']['eye'] != null ? json['result']['images']['object']['eye'].cast<String>() : null;
    List<String> dataGlasses = json['result']['images']['object']['glasses'] != null ? json['result']['images']['object']['glasses'].cast<String>() : null;
    List<String> dataHat = json['result']['images']['object']['hat'] != null ? json['result']['images']['object']['hat'].cast<String>() : null;
    List<String> dataMeme = json['result']['images']['object']['meme'] != null ? json['result']['images']['object']['meme'].cast<String>() : null;
    List<String> dataMouth = json['result']['images']['object']['mouth'] != null ? json['result']['images']['object']['mouth'].cast<String>() : null;
    List<String> dataNecklace = json['result']['images']['object']['necklace'] != null ? json['result']['images']['object']['necklace'].cast<String>() : null;
    List<String> dataOther = json['result']['images']['object']['other'] != null ? json['result']['images']['object']['other'].cast<String>() : null;
    List<String> dataTalking = json['result']['images']['object']['talking'] != null ? json['result']['images']['object']['talking'].cast<String>() : null;
    List<String> dataDailyGirl = json['result']['images']['sticker_body']['daily girl'] != null ? json['result']['images']['sticker_body']['daily girl'].cast<String>() : null;
    List<String> dataDaily = json['result']['images']['sticker_body']['daily'] != null ? json['result']['images']['sticker_body']['daily'].cast<String>() : null;
    List<String> dataNoelGirl = json['result']['images']['sticker_body']['noel girl'] != null ? json['result']['images']['sticker_body']['noel girl'].cast<String>() : null;
    List<String> dataNoel = json['result']['images']['sticker_body']['noel'] != null ? json['result']['images']['sticker_body']['noel'].cast<String>() : null;
    List<String> dataPanda = json['result']['images']['sticker_body']['panda'] != null ? json['result']['images']['sticker_body']['panda'].cast<String>() : null;
    List<String> dataTaylorSwift = json['result']['images']['sticker_body']['taylor swift'] != null ? json['result']['images']['sticker_body']['taylor swift'].cast<String>() : null;
    dataEmoji.forEach((element) {
      emoji.add(DowloadItem(linkNetwork: element));
    });
    dataBeard.forEach((element) {
      beard.add(DowloadItem(linkNetwork: element));
    });
    dataBrow.forEach((element) {
      brow.add(DowloadItem(linkNetwork: element));
    });
    dataChristmas.forEach((element) {
      christmas.add(DowloadItem(linkNetwork: element));
    });
    dataEye.forEach((element) {
      eye.add(DowloadItem(linkNetwork: element));
    });
    dataGlasses.forEach((element) {
      glasses.add(DowloadItem(linkNetwork: element));
    });
    dataHat.forEach((element) {
      hat.add(DowloadItem(linkNetwork: element));
    });
    dataMeme.forEach((element) {
      meme.add(DowloadItem(linkNetwork: element));
    });
    dataMouth.forEach((element) {
      mouth.add(DowloadItem(linkNetwork: element));
    });
    dataNecklace.forEach((element) {
      necklace.add(DowloadItem(linkNetwork: element));
    });
    dataOther.forEach((element) {
      other.add(DowloadItem(linkNetwork: element));
    });
    dataTalking.forEach((element) {
      talking.add(DowloadItem(linkNetwork: element));
    });
    dataDailyGirl.forEach((element) {
      dailyGirl.add(DowloadItem(linkNetwork: element));
    });
    dataDaily.forEach((element) {
      daily.add(DowloadItem(linkNetwork: element));
    });
    dataNoelGirl.forEach((element) {
      noelGirl.add(DowloadItem(linkNetwork: element));
    });
    dataNoel.forEach((element) {
      noel.add(DowloadItem(linkNetwork: element));
    });
    dataPanda.forEach((element) {
      panda.add(DowloadItem(linkNetwork: element));
    });
    dataTaylorSwift.forEach((element) {
      taylorSwift.add(DowloadItem(linkNetwork: element));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    // if (this.result != null) {
    //   data['result'] = this.result!.toJson();
    // }
    return data;
  }
}
