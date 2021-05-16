import 'dart:convert';

class Catalogmodel {
  static  List<Item> item= [
    Item(1, "i am leo", "i want to fuck", 10000,
        "https://picsum.photos/200/300"),
    Item(2, "i am leo", "i want to fuck", 10000,
        "https://picsum.photos/200/300"),
    Item(3, "i am leo", "i want to fuck", 10000,
        "https://picsum.photos/200/300"),
  ];
}

class Item {
  final num id;
  final String name;
  final String desk;
  final num price;
  final String image;

  Item(
    this.id,
    this.name,
    this.desk,
    this.price,
    this.image,
  );

  // factory Item.fromMap(Map<String, dynamic> map) {
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     desk: map["desk"],
  //     price: map["price"],
  //     image: map["image"],
  //   );
  // }
  // toMap() => {
  //       id: "id",
  //       name: "name",
  //       desk: "desk",
  //       price: "price",
  //       image: "image",
  //     };

  Item copyWith({
    num? id,
    String? name,
    String? desk,
    num? price,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      desk ?? this.desk,
      price ?? this.price,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desk': desk,
      'price': price,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id'],
      map['name'],
      map['desk'],
      map['price'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desk: $desk, price: $price, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Item &&
      other.id == id &&
      other.name == name &&
      other.desk == desk &&
      other.price == price &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      desk.hashCode ^
      price.hashCode ^
      image.hashCode;
  }
}
