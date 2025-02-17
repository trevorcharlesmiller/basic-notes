// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteListState {
  NoteList? get noteList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteListStateCopyWith<NoteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListStateCopyWith<$Res> {
  factory $NoteListStateCopyWith(
          NoteListState value, $Res Function(NoteListState) then) =
      _$NoteListStateCopyWithImpl<$Res, NoteListState>;
  @useResult
  $Res call({NoteList? noteList, bool isLoading, bool isError});

  $NoteListCopyWith<$Res>? get noteList;
}

/// @nodoc
class _$NoteListStateCopyWithImpl<$Res, $Val extends NoteListState>
    implements $NoteListStateCopyWith<$Res> {
  _$NoteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteList = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      noteList: freezed == noteList
          ? _value.noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as NoteList?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteListCopyWith<$Res>? get noteList {
    if (_value.noteList == null) {
      return null;
    }

    return $NoteListCopyWith<$Res>(_value.noteList!, (value) {
      return _then(_value.copyWith(noteList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteListStateStateImplCopyWith<$Res>
    implements $NoteListStateCopyWith<$Res> {
  factory _$$NoteListStateStateImplCopyWith(_$NoteListStateStateImpl value,
          $Res Function(_$NoteListStateStateImpl) then) =
      __$$NoteListStateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteList? noteList, bool isLoading, bool isError});

  @override
  $NoteListCopyWith<$Res>? get noteList;
}

/// @nodoc
class __$$NoteListStateStateImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateStateImpl>
    implements _$$NoteListStateStateImplCopyWith<$Res> {
  __$$NoteListStateStateImplCopyWithImpl(_$NoteListStateStateImpl _value,
      $Res Function(_$NoteListStateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteList = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$NoteListStateStateImpl(
      noteList: freezed == noteList
          ? _value.noteList
          : noteList // ignore: cast_nullable_to_non_nullable
              as NoteList?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NoteListStateStateImpl implements _NoteListStateState {
  const _$NoteListStateStateImpl(
      {this.noteList = null, this.isLoading = false, this.isError = false});

  @override
  @JsonKey()
  final NoteList? noteList;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'NoteListState(noteList: $noteList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateStateImpl &&
            (identical(other.noteList, noteList) ||
                other.noteList == noteList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteList, isLoading, isError);

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateStateImplCopyWith<_$NoteListStateStateImpl> get copyWith =>
      __$$NoteListStateStateImplCopyWithImpl<_$NoteListStateStateImpl>(
          this, _$identity);
}

abstract class _NoteListStateState implements NoteListState {
  const factory _NoteListStateState(
      {final NoteList? noteList,
      final bool isLoading,
      final bool isError}) = _$NoteListStateStateImpl;

  @override
  NoteList? get noteList;
  @override
  bool get isLoading;
  @override
  bool get isError;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteListStateStateImplCopyWith<_$NoteListStateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
