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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:uuid/uuid.dart';

import '../injection.dart';
import '../model/note.dart';
import '../service/note_service.dart';
import 'note_state.dart';

class NoteStateNotifier extends StateNotifier<NoteState> {
  NoteStateNotifier() : super(const NoteState());

  final log = Logger('NoteStateNotifier');
  final uuid = Uuid();

  Note createNote() {
    Note note = Note(id: uuid.v4(), content: '');
    state = state.copyWith(note: note);
    return note;
  }

  void deselectNote() {
    state = state.copyWith(note: null);
  }

  Future<void> load(String id) async {
    log.fine('NoteStateNotifier#load() - START');
    try {
      NoteService noteService = getIt<NoteService>();
      Note note = await noteService.loadNote(id);
      state = state.copyWith(note: note);
    } catch (error, trace) {
      log.severe('Failed to load note', error, trace);
      state = state.copyWith(isError: true);
    }
    state = state.copyWith(isLoading: false);
    log.fine('NoteStateNotifier#load() - END');
  }

  Future<void> save(String content) async {
    log.fine('NoteStateNotifier#save() - START');
    try {
      NoteService noteService = getIt<NoteService>();
      Note note = state.note!.copyWith(content: content);
      await noteService.saveNote(note);
      state = state.copyWith(note: note);
    } catch (error, trace) {
      log.severe('Failed to save note', error, trace);
      state = state.copyWith(isError: true);
    }
    state = state.copyWith(isLoading: false);
    log.fine('NoteStateNotifier#save() - END');
  }

  Future<void> delete(String id) async {
    log.fine('NoteStateNotifier#delete() - START');
    try {
      NoteService noteService = getIt<NoteService>();
      await noteService.deleteNote(id);
    } catch (error, trace) {
      log.severe('Failed to delete note', error, trace);
      state = state.copyWith(isError: true);
    }
    state = state.copyWith(isLoading: false);
    log.fine('NoteStateNotifier#delete() - END');
  }
}