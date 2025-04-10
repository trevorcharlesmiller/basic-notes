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

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/note.dart';
import '../../state/providers.dart';
import '../widgets/notes_scaffold.dart';

class NoteScreen extends ConsumerStatefulWidget {
  const NoteScreen({super.key});

  @override
  ConsumerState<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends ConsumerState<NoteScreen> {
  final TextEditingController noteController = TextEditingController();
  RestartableTimer? debounce = null;

  @override
  void dispose() {
    debounce?.cancel();
    noteController.dispose();
    super.dispose();
  }

  _onChanged(String content) {
    if(debounce == null) {
      debounce = RestartableTimer(const Duration(milliseconds: 2500), () async {
        Note? note = ref.watch(noteStateProvider).note;
        if(note != null) {
          String text = noteController.text;
          await ref.read(noteStateProvider.notifier).save(text);
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Note saved.'),
              ),
            );
          }
        }
      });
    } else {
      debounce!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    Note? note = ref.watch(noteStateProvider).note;
    if (note != null) {
      noteController.text = note.content ?? '';
    } else {
      ref.read(noteStateProvider.notifier).load();
    }
    return NotesScaffold(
        body: note==null ? Container() : Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration:  const InputDecoration.collapsed(hintText: ''),
            scrollPadding: const EdgeInsets.all(10.0),
            autofocus: true,
            controller: noteController,
            onChanged: _onChanged,
          ),
        ),
    );
  }
}
