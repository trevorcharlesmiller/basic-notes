// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteList _$NoteListFromJson(Map<String, dynamic> json) {
  return _NoteList.fromJson(json);
}

/// @nodoc
mixin _$NoteList {
  List<NoteListNote> get notes => throw _privateConstructorUsedError;

  /// Serializes this NoteList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteListCopyWith<NoteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListCopyWith<$Res> {
  factory $NoteListCopyWith(NoteList value, $Res Function(NoteList) then) =
      _$NoteListCopyWithImpl<$Res, NoteList>;
  @useResult
  $Res call({List<NoteListNote> notes});
}

/// @nodoc
class _$NoteListCopyWithImpl<$Res, $Val extends NoteList>
    implements $NoteListCopyWith<$Res> {
  _$NoteListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteListNote>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListImplCopyWith<$Res>
    implements $NoteListCopyWith<$Res> {
  factory _$$NoteListImplCopyWith(
          _$NoteListImpl value, $Res Function(_$NoteListImpl) then) =
      __$$NoteListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteListNote> notes});
}

/// @nodoc
class __$$NoteListImplCopyWithImpl<$Res>
    extends _$NoteListCopyWithImpl<$Res, _$NoteListImpl>
    implements _$$NoteListImplCopyWith<$Res> {
  __$$NoteListImplCopyWithImpl(
      _$NoteListImpl _value, $Res Function(_$NoteListImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$NoteListImpl(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteListNote>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteListImpl with DiagnosticableTreeMixin implements _NoteList {
  const _$NoteListImpl({this.notes = const []});

  factory _$NoteListImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteListImplFromJson(json);

  @override
  @JsonKey()
  final List<NoteListNote> notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteList(notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteList'))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListImpl &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  /// Create a copy of NoteList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListImplCopyWith<_$NoteListImpl> get copyWith =>
      __$$NoteListImplCopyWithImpl<_$NoteListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteListImplToJson(
      this,
    );
  }
}

abstract class _NoteList implements NoteList {
  const factory _NoteList({final List<NoteListNote> notes}) = _$NoteListImpl;

  factory _NoteList.fromJson(Map<String, dynamic> json) =
      _$NoteListImpl.fromJson;

  @override
  List<NoteListNote> get notes;

  /// Create a copy of NoteList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteListImplCopyWith<_$NoteListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
