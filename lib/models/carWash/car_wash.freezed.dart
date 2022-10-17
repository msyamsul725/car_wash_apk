// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'car_wash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarWash _$CarWashFromJson(Map<String, dynamic> json) {
  return _CarWash.fromJson(json);
}

/// @nodoc
mixin _$CarWash {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_name')
  String? get shopName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get addres => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarWashCopyWith<CarWash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWashCopyWith<$Res> {
  factory $CarWashCopyWith(CarWash value, $Res Function(CarWash) then) =
      _$CarWashCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'shop_name') String? shopName,
      String? photo,
      String? addres,
      double? rating,
      String? description});
}

/// @nodoc
class _$CarWashCopyWithImpl<$Res> implements $CarWashCopyWith<$Res> {
  _$CarWashCopyWithImpl(this._value, this._then);

  final CarWash _value;
  // ignore: unused_field
  final $Res Function(CarWash) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? photo = freezed,
    Object? addres = freezed,
    Object? rating = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      addres: addres == freezed
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CarWashCopyWith<$Res> implements $CarWashCopyWith<$Res> {
  factory _$$_CarWashCopyWith(
          _$_CarWash value, $Res Function(_$_CarWash) then) =
      __$$_CarWashCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'shop_name') String? shopName,
      String? photo,
      String? addres,
      double? rating,
      String? description});
}

/// @nodoc
class __$$_CarWashCopyWithImpl<$Res> extends _$CarWashCopyWithImpl<$Res>
    implements _$$_CarWashCopyWith<$Res> {
  __$$_CarWashCopyWithImpl(_$_CarWash _value, $Res Function(_$_CarWash) _then)
      : super(_value, (v) => _then(v as _$_CarWash));

  @override
  _$_CarWash get _value => super._value as _$_CarWash;

  @override
  $Res call({
    Object? id = freezed,
    Object? shopName = freezed,
    Object? photo = freezed,
    Object? addres = freezed,
    Object? rating = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CarWash(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      addres: addres == freezed
          ? _value.addres
          : addres // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarWash implements _CarWash {
  _$_CarWash(
      {this.id,
      @JsonKey(name: 'shop_name') this.shopName,
      this.photo,
      this.addres,
      this.rating,
      this.description});

  factory _$_CarWash.fromJson(Map<String, dynamic> json) =>
      _$$_CarWashFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'shop_name')
  final String? shopName;
  @override
  final String? photo;
  @override
  final String? addres;
  @override
  final double? rating;
  @override
  final String? description;

  @override
  String toString() {
    return 'CarWash(id: $id, shopName: $shopName, photo: $photo, addres: $addres, rating: $rating, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarWash &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.addres, addres) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(addres),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_CarWashCopyWith<_$_CarWash> get copyWith =>
      __$$_CarWashCopyWithImpl<_$_CarWash>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarWashToJson(
      this,
    );
  }
}

abstract class _CarWash implements CarWash {
  factory _CarWash(
      {final String? id,
      @JsonKey(name: 'shop_name') final String? shopName,
      final String? photo,
      final String? addres,
      final double? rating,
      final String? description}) = _$_CarWash;

  factory _CarWash.fromJson(Map<String, dynamic> json) = _$_CarWash.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'shop_name')
  String? get shopName;
  @override
  String? get photo;
  @override
  String? get addres;
  @override
  double? get rating;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CarWashCopyWith<_$_CarWash> get copyWith =>
      throw _privateConstructorUsedError;
}
