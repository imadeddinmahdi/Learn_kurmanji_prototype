import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_kurmanji_2022/screens/first_page.dart';
import 'package:learn_kurmanji_2022/screens/lesson_list.dart';
import 'package:learn_kurmanji_2022/screens/song_list.dart';
import 'package:learn_kurmanji_2022/components/player_ui.dart';
import 'package:learn_kurmanji_2022/screens/vocabulary_list.dart';
import 'package:learn_kurmanji_2022/screens/grammar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

final stoage = GetStorage();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: FirstPage(),
      initialRoute: FirstPage.id,
      routes: {
        FirstPage.id: (context) => FirstPage(),
        SongList.id: (context) => SongList(),
        PlayerUI.id: (context) => const PlayerUI(selectedCard: 1, song: 'he', singer: 'bla', songName: 'bla'),
        Vocab.id: (context) => Vocab(),
        Grammar.id: (context) => Grammar(
              lessonNumber: 0,
            ),
        LessonsList.id: (context) => LessonsList(),
      },
    );
  }
}
