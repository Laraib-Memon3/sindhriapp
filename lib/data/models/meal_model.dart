import 'package:equatable/equatable.dart';

class MealModel extends Equatable {
  final String title;
  final String subTitle;
  final String details;
  final String imageUrl;
  final bool isFavourite;
  final int mins;
  final double price;
  final double rate;
  final double temperature;

  const MealModel({
    required this.title,
    required this.subTitle,
    required this.details,
    required this.imageUrl,
    required this.isFavourite,
    required this.mins,
    required this.price,
    required this.rate,
    required this.temperature,
  });

  factory MealModel.fromMap(Map<String, dynamic> map) {
    return MealModel(
      title: map['title'] ?? '',
      subTitle: map['subTitle'] ?? '',
      details: map['details'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      isFavourite: map['isFavourite'] ?? false,
      mins: (map['mins'] ?? 0).toInt(),
      price: (map['price'] ?? 0.0).toDouble(),
      rate: (map['rate'] ?? 0.0).toDouble(),
      temperature: (map['temperature'] ?? 0.0).toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subTitle': subTitle,
      'details': details,
      'imageUrl': imageUrl,
      'isFavourite': isFavourite,
      'mins': mins,
      'price': price,
      'rate': rate,
      'temperature': temperature,
    };
  }

  @override
  List<Object> get props => [
        title,
        subTitle,
        details,
        imageUrl,
        isFavourite,
        mins,
        price,
        rate,
        temperature,
      ];
}
