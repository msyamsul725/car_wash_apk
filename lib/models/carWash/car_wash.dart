import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_wash.freezed.dart';
part 'car_wash.g.dart';

@freezed
class CarWash with _$CarWash {
  factory CarWash({
    String? id,
    @JsonKey(name: 'shop_name') String? shopName,
    String? photo,
    String? addres,
    double? rating,
    String? description,
  }) = _CarWash;

  factory CarWash.fromJson(Map<String, dynamic> json) =>
      _$CarWashFromJson(json);
}
