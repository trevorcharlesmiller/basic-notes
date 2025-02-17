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

import '../model/note.dart';

part 'note_state.freezed.dart';

@Freezed()
class NoteState with _$NoteState {

  const factory NoteState({
    @Default(null) Note? note,
    @Default(false) bool isLoading,
    @Default(false) bool isError,

  }) = _NoteState;

}