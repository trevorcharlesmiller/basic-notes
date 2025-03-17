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


import 'package:basic_notes/repository/storage_repository.dart';

import '../injection.dart';
import 'file/app_dir_repository.dart';
import 'file/file_note_repository.dart';
import 'note_repository.dart';
import 'secure/secure_storage_repository.dart';

/// This class acts as a mapper between repository interfaces and the actual
/// concrete implementation allowing us to switch out implementations easily.
/// For example, if we wish to switch from a file based repo to an api based
/// repo we can change one line of code in this class and all our other code
/// does not need to change. Thus we have highly decoupled code.
class Locator {

  static AppDirRepository getAppDirRepository() {
    return getIt<AppDirRepository>();
  }

  static NoteRepository getNoteRepository() {
    return getIt<FileNoteRepository>();
  }

  static StorageRepository getStorageRepository() {
    return getIt<SecureStorageRepository>();
  }

}