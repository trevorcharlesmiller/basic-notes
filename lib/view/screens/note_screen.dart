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

class NoteScreen extends ConsumerStatefulWidget {
  const NoteScreen({super.key});

  @override
  ConsumerState<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends ConsumerState<NoteScreen> {
  final TextEditingController noteController = TextEditingController();
  late final RestartableTimer debounce;

  @override
  void initState() {
    super.initState();
    debounce = RestartableTimer(const Duration(milliseconds: 1000), () async {
      //await ref.read(noteStateProvider.notifier).save(content);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Updated note successfully.'),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    debounce.cancel();
    noteController.dispose();
    super.dispose();
  }

  _onChanged(String content) {
    if (debounce.isActive) debounce.reset();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
