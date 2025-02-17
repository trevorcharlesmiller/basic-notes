// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteListNote _$NoteListNoteFromJson(Map<String, dynamic> json) {
  return _NoteListNote.fromJson(json);
}

/// @nodoc
mixin _$NoteListNote {
  String get id => throw _privateConstructorUsedError;
  String get abstract => throw _privateConstructorUsedError;

  /// Serializes this NoteListNote to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteListNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteListNoteCopyWith<NoteListNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListNoteCopyWith<$Res> {
  factory $NoteListNoteCopyWith(
          NoteListNote value, $Res Function(NoteListNote) then) =
      _$NoteListNoteCopyWithImpl<$Res, NoteListNote>;
  @useResult
  $Res call({String id, String abstract});
}

/// @nodoc
class _$NoteListNoteCopyWithImpl<$Res, $Val extends NoteListNote>
    implements $NoteListNoteCopyWith<$Res> {
  _$NoteListNoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteListNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abstract = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListNoteImplCopyWith<$Res>
    implements $NoteListNoteCopyWith<$Res> {
  factory _$$NoteListNoteImplCopyWith(
          _$NoteListNoteImpl value, $Res Function(_$NoteListNoteImpl) then) =
      __$$NoteListNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String abstract});
}

/// @nodoc
class __$$NoteListNoteImplCopyWithImpl<$Res>
    extends _$NoteListNoteCopyWithImpl<$Res, _$NoteListNoteImpl>
    implements _$$NoteListNoteImplCopyWith<$Res> {
  __$$NoteListNoteImplCopyWithImpl(
      _$NoteListNoteImpl _value, $Res Function(_$NoteListNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteListNote
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? abstract = null,
  }) {
    return _then(_$NoteListNoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      abstract: null == abstract
          ? _value.abstract
          : abstract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteListNoteImpl with DiagnosticableTreeMixin implements _NoteListNote {
  const _$NoteListNoteImpl({required this.id, this.abstract = ''});

  factory _$NoteListNoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteListNoteImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String abstract;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteListNote(id: $id, abstract: $abstract)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteListNote'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('abstract', abstract));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListNoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.abstract, abstract) ||
                other.abstract == abstract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, abstract);

  /// Create a copy of NoteListNote
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListNoteImplCopyWith<_$NoteListNoteImpl> get copyWith =>
      __$$NoteListNoteImplCopyWithImpl<_$NoteListNoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteListNoteImplToJson(
      this,
    );
  }
}

abstract class _NoteListNote implements NoteListNote {
  const factory _NoteListNote(
      {required final String id, final String abstract}) = _$NoteListNoteImpl;

  factory _NoteListNote.fromJson(Map<String, dynamic> json) =
      _$NoteListNoteImpl.fromJson;

  @override
  String get id;
  @override
  String get abstract;

  /// Create a copy of NoteListNote
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteListNoteImplCopyWith<_$NoteListNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
