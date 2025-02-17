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
import 'package:basic_notes/model/note_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../model/note_list_note.dart';
import 'note_list_state.dart';

const maxAbstractLength = 30;

class NoteListStateNotifier extends StateNotifier<NoteListState> {
  NoteListStateNotifier() : super(const NoteListState());

  final log = Logger('NoteListStateNotifier');

  String abstract(String content) {
    if (content.length < maxAbstractLength) {
      return content;
    } else {
      return content.substring(0, maxAbstractLength);
    }
  }

  void addNote(String id, String content) {
    NoteListNote newNote = NoteListNote(id: id, abstract: abstract(content));
    List<NoteListNote> notes;
    if(state.noteList==null) {
      notes = [newNote];
      state = state.copyWith(noteList: NoteList(notes: notes));
    } else {
      notes = [...state.noteList!.notes, ];
      state = state.copyWith(noteList: state.noteList!.copyWith(notes: notes));
    }

  }
}
