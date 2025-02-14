
// This source code is copyright ot Trevor Miller.
// Trevor Miller licenses this file to You under the MIT License (the
// "License"); you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://github.com/trevorcharlesmiller/basic-notes/blob/main/LICENSE
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'note.dart';

part 'note_list.freezed.dart';
part 'note_list.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class NoteList with _$NoteList {
  const factory NoteList({
    @Default([]) List<Note> notes,
  }) = _NoteList;

  factory NoteList.fromJson(Map<String, Object?> json)
  => _$NoteListFromJson(json);
}