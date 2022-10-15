

class GetListModel {
  String id;
  String shopName;
  String mobileNumber;
  String due;
  String city;

  GetListModel({
    required this.id,
    required this.city,
    required this.shopName,
    required this.due,
    required this.mobileNumber,
  });

  factory GetListModel.fromJson(Map<String, dynamic> json) => GetListModel(
    id: json["_id"],
    city: json["city"],
    shopName: json["shopName"],
    due: json["due"],
    mobileNumber: json["mobileNumber"],
  );

  Map<String, dynamic> toJson() => {
    if(this.id!=null) "_id": id,
    "city": city,
    "shopName": shopName,
    "due": due,
    "mobileNumber": mobileNumber,
  };
}
