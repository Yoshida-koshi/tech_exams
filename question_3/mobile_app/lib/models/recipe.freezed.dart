// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recipe {
  String get id;
  String get name;
  @JsonKey(name: 'how_to_make')
  String? get howToMake;
  @JsonKey(name: 'number_of_people')
  int get numberOfPeople;
  @JsonKey(name: 'cooking_time')
  int get cookingTime;
  String get category;
  int? get calories;
  List<Ingredient>? get materials;
  @JsonKey(name: 'cooking_processes')
  List<CookingProcess>? get cookingProcesses;
  List<Nutrition>? get nutritions;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<Recipe> get copyWith =>
      _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Recipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
            const DeepCollectionEquality().equals(other.materials, materials) &&
            const DeepCollectionEquality()
                .equals(other.cookingProcesses, cookingProcesses) &&
            const DeepCollectionEquality()
                .equals(other.nutritions, nutritions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      howToMake,
      numberOfPeople,
      cookingTime,
      category,
      calories,
      const DeepCollectionEquality().hash(materials),
      const DeepCollectionEquality().hash(cookingProcesses),
      const DeepCollectionEquality().hash(nutritions));

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, howToMake: $howToMake, numberOfPeople: $numberOfPeople, cookingTime: $cookingTime, category: $category, calories: $calories, materials: $materials, cookingProcesses: $cookingProcesses, nutritions: $nutritions)';
  }
}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) =
      _$RecipeCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'how_to_make') String? howToMake,
      @JsonKey(name: 'number_of_people') int numberOfPeople,
      @JsonKey(name: 'cooking_time') int cookingTime,
      String category,
      int? calories,
      List<Ingredient>? materials,
      @JsonKey(name: 'cooking_processes')
      List<CookingProcess>? cookingProcesses,
      List<Nutrition>? nutritions});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? howToMake = freezed,
    Object? numberOfPeople = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? calories = freezed,
    Object? materials = freezed,
    Object? cookingProcesses = freezed,
    Object? nutritions = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      howToMake: freezed == howToMake
          ? _self.howToMake
          : howToMake // ignore: cast_nullable_to_non_nullable
              as String?,
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
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      materials: freezed == materials
          ? _self.materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      cookingProcesses: freezed == cookingProcesses
          ? _self.cookingProcesses
          : cookingProcesses // ignore: cast_nullable_to_non_nullable
              as List<CookingProcess>?,
      nutritions: freezed == nutritions
          ? _self.nutritions
          : nutritions // ignore: cast_nullable_to_non_nullable
              as List<Nutrition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Recipe implements Recipe {
  const _Recipe(
      {required this.id,
      required this.name,
      @JsonKey(name: 'how_to_make') this.howToMake,
      @JsonKey(name: 'number_of_people') required this.numberOfPeople,
      @JsonKey(name: 'cooking_time') required this.cookingTime,
      required this.category,
      this.calories,
      final List<Ingredient>? materials,
      @JsonKey(name: 'cooking_processes')
      final List<CookingProcess>? cookingProcesses,
      final List<Nutrition>? nutritions})
      : _materials = materials,
        _cookingProcesses = cookingProcesses,
        _nutritions = nutritions;
  factory _Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'how_to_make')
  final String? howToMake;
  @override
  @JsonKey(name: 'number_of_people')
  final int numberOfPeople;
  @override
  @JsonKey(name: 'cooking_time')
  final int cookingTime;
  @override
  final String category;
  @override
  final int? calories;
  final List<Ingredient>? _materials;
  @override
  List<Ingredient>? get materials {
    final value = _materials;
    if (value == null) return null;
    if (_materials is EqualUnmodifiableListView) return _materials;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CookingProcess>? _cookingProcesses;
  @override
  @JsonKey(name: 'cooking_processes')
  List<CookingProcess>? get cookingProcesses {
    final value = _cookingProcesses;
    if (value == null) return null;
    if (_cookingProcesses is EqualUnmodifiableListView)
      return _cookingProcesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Nutrition>? _nutritions;
  @override
  List<Nutrition>? get nutritions {
    final value = _nutritions;
    if (value == null) return null;
    if (_nutritions is EqualUnmodifiableListView) return _nutritions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecipeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipe &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
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
            const DeepCollectionEquality()
                .equals(other._materials, _materials) &&
            const DeepCollectionEquality()
                .equals(other._cookingProcesses, _cookingProcesses) &&
            const DeepCollectionEquality()
                .equals(other._nutritions, _nutritions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      howToMake,
      numberOfPeople,
      cookingTime,
      category,
      calories,
      const DeepCollectionEquality().hash(_materials),
      const DeepCollectionEquality().hash(_cookingProcesses),
      const DeepCollectionEquality().hash(_nutritions));

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, howToMake: $howToMake, numberOfPeople: $numberOfPeople, cookingTime: $cookingTime, category: $category, calories: $calories, materials: $materials, cookingProcesses: $cookingProcesses, nutritions: $nutritions)';
  }
}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) =
      __$RecipeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'how_to_make') String? howToMake,
      @JsonKey(name: 'number_of_people') int numberOfPeople,
      @JsonKey(name: 'cooking_time') int cookingTime,
      String category,
      int? calories,
      List<Ingredient>? materials,
      @JsonKey(name: 'cooking_processes')
      List<CookingProcess>? cookingProcesses,
      List<Nutrition>? nutritions});
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? howToMake = freezed,
    Object? numberOfPeople = null,
    Object? cookingTime = null,
    Object? category = null,
    Object? calories = freezed,
    Object? materials = freezed,
    Object? cookingProcesses = freezed,
    Object? nutritions = freezed,
  }) {
    return _then(_Recipe(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      howToMake: freezed == howToMake
          ? _self.howToMake
          : howToMake // ignore: cast_nullable_to_non_nullable
              as String?,
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
      calories: freezed == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as int?,
      materials: freezed == materials
          ? _self._materials
          : materials // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>?,
      cookingProcesses: freezed == cookingProcesses
          ? _self._cookingProcesses
          : cookingProcesses // ignore: cast_nullable_to_non_nullable
              as List<CookingProcess>?,
      nutritions: freezed == nutritions
          ? _self._nutritions
          : nutritions // ignore: cast_nullable_to_non_nullable
              as List<Nutrition>?,
    ));
  }
}

// dart format on
