// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegisterPageState {
  String get recipeName;
  String get howToMake;
  int get numberOfPeople;
  int get cookingTime;
  String get category;
  int get calories;
  String get materialName;
  String get usageAmount;
  String get process;
  String get nutrient;
  int get amount;
  bool get isLoading;

  /// Create a copy of RegisterPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegisterPageStateCopyWith<RegisterPageState> get copyWith =>
      _$RegisterPageStateCopyWithImpl<RegisterPageState>(
          this as RegisterPageState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterPageState &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.howToMake, howToMake) ||
                other.howToMake == howToMake) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.materialName, materialName) ||
                other.materialName == materialName) &&
            (identical(other.usageAmount, usageAmount) ||
                other.usageAmount == usageAmount) &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.nutrient, nutrient) ||
                other.nutrient == nutrient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeName,
      howToMake,
      numberOfPeople,
      cookingTime,
      category,
      calories,
      materialName,
      usageAmount,
      process,
      nutrient,
      amount,
      isLoading);

  @override
  String toString() {
    return 'RegisterPageState(recipeName: $recipeName, howToMake: $howToMake, numberOfPeople: $numberOfPeople, cookingTime: $cookingTime, category: $category, calories: $calories, materialName: $materialName, usageAmount: $usageAmount, process: $process, nutrient: $nutrient, amount: $amount, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $RegisterPageStateCopyWith<$Res> {
  factory $RegisterPageStateCopyWith(
          RegisterPageState value, $Res Function(RegisterPageState) _then) =
      _$RegisterPageStateCopyWithImpl;
  @useResult
  $Res call(
      {String recipeName,
      String howToMake,
      int numberOfPeople,
      int cookingTime,
      String category,
      int calories,
      String materialName,
      String usageAmount,
      String process,
      String nutrient,
      int amount,
      bool isLoading});
}

/// @nodoc
class _$RegisterPageStateCopyWithImpl<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  _$RegisterPageStateCopyWithImpl(this._self, this._then);

  final RegisterPageState _self;
  final $Res Function(RegisterPageState) _then;

  /// Create a copy of RegisterPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeName = null,
    Object? howToMake = null,
    Object? numberOfPeople = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? calories = null,
    Object? materialName = null,
    Object? usageAmount = null,
    Object? process = null,
    Object? nutrient = null,
    Object? amount = null,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      recipeName: null == recipeName
          ? _self.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      howToMake: null == howToMake
          ? _self.howToMake
          : howToMake // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPeople: null == numberOfPeople
          ? _self.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      cookingTime: null == cookingTime
          ? _self.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      materialName: null == materialName
          ? _self.materialName
          : materialName // ignore: cast_nullable_to_non_nullable
              as String,
      usageAmount: null == usageAmount
          ? _self.usageAmount
          : usageAmount // ignore: cast_nullable_to_non_nullable
              as String,
      process: null == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: null == nutrient
          ? _self.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _RegisterPageState implements RegisterPageState {
  const _RegisterPageState(
      {this.recipeName = "",
      this.howToMake = "",
      this.numberOfPeople = 0,
      this.cookingTime = 0,
      this.category = "",
      this.calories = 0,
      this.materialName = "",
      this.usageAmount = "",
      this.process = "",
      this.nutrient = "",
      this.amount = 0,
      this.isLoading = false});

  @override
  @JsonKey()
  final String recipeName;
  @override
  @JsonKey()
  final String howToMake;
  @override
  @JsonKey()
  final int numberOfPeople;
  @override
  @JsonKey()
  final int cookingTime;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final int calories;
  @override
  @JsonKey()
  final String materialName;
  @override
  @JsonKey()
  final String usageAmount;
  @override
  @JsonKey()
  final String process;
  @override
  @JsonKey()
  final String nutrient;
  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final bool isLoading;

  /// Create a copy of RegisterPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegisterPageStateCopyWith<_RegisterPageState> get copyWith =>
      __$RegisterPageStateCopyWithImpl<_RegisterPageState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterPageState &&
            (identical(other.recipeName, recipeName) ||
                other.recipeName == recipeName) &&
            (identical(other.howToMake, howToMake) ||
                other.howToMake == howToMake) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.materialName, materialName) ||
                other.materialName == materialName) &&
            (identical(other.usageAmount, usageAmount) ||
                other.usageAmount == usageAmount) &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.nutrient, nutrient) ||
                other.nutrient == nutrient) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeName,
      howToMake,
      numberOfPeople,
      cookingTime,
      category,
      calories,
      materialName,
      usageAmount,
      process,
      nutrient,
      amount,
      isLoading);

  @override
  String toString() {
    return 'RegisterPageState(recipeName: $recipeName, howToMake: $howToMake, numberOfPeople: $numberOfPeople, cookingTime: $cookingTime, category: $category, calories: $calories, materialName: $materialName, usageAmount: $usageAmount, process: $process, nutrient: $nutrient, amount: $amount, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$RegisterPageStateCopyWith<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  factory _$RegisterPageStateCopyWith(
          _RegisterPageState value, $Res Function(_RegisterPageState) _then) =
      __$RegisterPageStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String recipeName,
      String howToMake,
      int numberOfPeople,
      int cookingTime,
      String category,
      int calories,
      String materialName,
      String usageAmount,
      String process,
      String nutrient,
      int amount,
      bool isLoading});
}

/// @nodoc
class __$RegisterPageStateCopyWithImpl<$Res>
    implements _$RegisterPageStateCopyWith<$Res> {
  __$RegisterPageStateCopyWithImpl(this._self, this._then);

  final _RegisterPageState _self;
  final $Res Function(_RegisterPageState) _then;

  /// Create a copy of RegisterPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? recipeName = null,
    Object? howToMake = null,
    Object? numberOfPeople = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? calories = null,
    Object? materialName = null,
    Object? usageAmount = null,
    Object? process = null,
    Object? nutrient = null,
    Object? amount = null,
    Object? isLoading = null,
  }) {
    return _then(_RegisterPageState(
      recipeName: null == recipeName
          ? _self.recipeName
          : recipeName // ignore: cast_nullable_to_non_nullable
              as String,
      howToMake: null == howToMake
          ? _self.howToMake
          : howToMake // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPeople: null == numberOfPeople
          ? _self.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      cookingTime: null == cookingTime
          ? _self.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int,
      materialName: null == materialName
          ? _self.materialName
          : materialName // ignore: cast_nullable_to_non_nullable
              as String,
      usageAmount: null == usageAmount
          ? _self.usageAmount
          : usageAmount // ignore: cast_nullable_to_non_nullable
              as String,
      process: null == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
      nutrient: null == nutrient
          ? _self.nutrient
          : nutrient // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
