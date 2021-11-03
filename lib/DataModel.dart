import 'package:dynamic_treeview/dynamic_treeview.dart';

class DataModel implements BaseData {
  final int id;
  final int parentId;
  String name;

  Map<String, dynamic> extras;
  DataModel({this.id, this.parentId, this.name, this.extras});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json["id"],
      parentId: json["parentId"],
      name: json["displayText"],
    );
  }

  @override
  String getId() {
    return this.id.toString();
  }

  @override
  String getParentId() {
    return this.parentId.toString();
  }

  @override
  String getTitle() {
    return this.name;
  }

  @override
  Map<String, dynamic> getExtraData() {
    // TODO: implement getExtraData
    return this.extras;
  }
}
