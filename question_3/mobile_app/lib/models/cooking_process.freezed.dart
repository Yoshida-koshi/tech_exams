// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cooking_process.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CookingProcess {
  String get id;
  @JsonKey(name: 'order_number')
  int get orderNumber;
  String get process;

  /// Create a copy of CookingProcess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CookingProcessCopyWith<CookingProcess> get copyWith =>
      _$CookingProcessCopyWithImpl<CookingProcess>(
          this as CookingProcess, _$identity);

  /// Serializes this CookingProcess to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CookingProcess &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.process, process) || other.process == process));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderNumber, process);

  @override
  String toString() {
    return 'CookingProcess(id: $id, orderNumber: $orderNumber, process: $process)';
  }
}

/// @nodoc
abstract mixin class $CookingProcessCopyWith<$Res> {
  factory $CookingProcessCopyWith(
          CookingProcess value, $Res Function(CookingProcess) _then) =
      _$CookingProcessCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'order_number') int orderNumber,
      String process});
}

/// @nodoc
class _$CookingProcessCopyWithImpl<$Res>
    implements $CookingProcessCopyWith<$Res> {
  _$CookingProcessCopyWithImpl(this._self, this._then);

  final CookingProcess _self;
  final $Res Function(CookingProcess) _then;

  /// Create a copy of CookingProcess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? process = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      process: null == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CookingProcess implements CookingProcess {
  const _CookingProcess(
      {required this.id,
      @JsonKey(name: 'order_number') required this.orderNumber,
      required this.process});
  factory _CookingProcess.fromJson(Map<String, dynamic> json) =>
      _$CookingProcessFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'order_number')
  final int orderNumber;
  @override
  final String process;

  /// Create a copy of CookingProcess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CookingProcessCopyWith<_CookingProcess> get copyWith =>
      __$CookingProcessCopyWithImpl<_CookingProcess>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CookingProcessToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CookingProcess &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.process, process) || other.process == process));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderNumber, process);

  @override
  String toString() {
    return 'CookingProcess(id: $id, orderNumber: $orderNumber, process: $process)';
  }
}

/// @nodoc
abstract mixin class _$CookingProcessCopyWith<$Res>
    implements $CookingProcessCopyWith<$Res> {
  factory _$CookingProcessCopyWith(
          _CookingProcess value, $Res Function(_CookingProcess) _then) =
      __$CookingProcessCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'order_number') int orderNumber,
      String process});
}

/// @nodoc
class __$CookingProcessCopyWithImpl<$Res>
    implements _$CookingProcessCopyWith<$Res> {
  __$CookingProcessCopyWithImpl(this._self, this._then);

  final _CookingProcess _self;
  final $Res Function(_CookingProcess) _then;

  /// Create a copy of CookingProcess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? process = null,
  }) {
    return _then(_CookingProcess(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _self.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as int,
      process: null == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
