
import 'package:basic_notes/injection.dart';
import 'package:basic_notes/repository/file/file_note_repository.dart';
import 'package:basic_notes/service/note_service.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([FileNoteRepository])
void main() {
  configureDependencies();

  test('test note service', () async {
    NoteService service = getIt<NoteService>();
    await service.saveNote('note123.txt', 'This is a test note!');
    String actual = await service.loadNote('note123.txt');
    expect(actual, equals('This is a test note!'));
  });
}