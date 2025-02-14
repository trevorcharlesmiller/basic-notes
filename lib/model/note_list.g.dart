// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteListImpl _$$NoteListImplFromJson(Map<String, dynamic> json) =>
    _$NoteListImpl(
      notes: (json['notes'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NoteListImplToJson(_$NoteListImpl instance) =>
    <String, dynamic>{
      'notes': instance.notes,
    };
