class MyModel {
  final String name;
  final String description;
  final String imageUrl;
  final String price;

  MyModel({required this.name, required this.description, required this.imageUrl, required this.price});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      name: json['title'],
      description: json['description'],
      imageUrl: json['image'],
      price: '\$${json['price']}',
    );
  }
}
