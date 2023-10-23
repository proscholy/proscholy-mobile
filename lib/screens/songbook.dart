import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zpevnik/components/app_bar_action_button.dart';
import 'package:zpevnik/components/custom/back_button.dart';
import 'package:zpevnik/components/navigation/scaffold.dart';
import 'package:zpevnik/components/song_lyric/song_lyrics_list_view.dart';
import 'package:zpevnik/constants.dart';
import 'package:zpevnik/models/songbook.dart';
import 'package:zpevnik/providers/song_lyrics.dart';
import 'package:zpevnik/providers/tags.dart';
import 'package:zpevnik/utils/extensions.dart';

class SongbookScreen extends StatelessWidget {
  final Songbook songbook;

  const SongbookScreen({super.key, required this.songbook});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        title: Text(songbook.name),
        leadingWidth: 24 + 4 * kDefaultPadding,
        actions: [AppBarActionButton(onTap: () => _pushSearch(context), icon: Icons.filter_alt)],
      ),
      body: SafeArea(
        child: Consumer(
          builder: (_, ref, __) => SongLyricsListView(songLyrics: ref.watch(songsListSongLyricsProvider(songbook))),
        ),
      ),
    );
  }

  void _pushSearch(BuildContext context) {
    context.providers.read(selectedTagsProvider.notifier).push(initialTag: songbook.tag);

    context.push('/search');
  }
}
