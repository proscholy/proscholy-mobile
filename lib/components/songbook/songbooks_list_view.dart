import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zpevnik/components/songbook/songbook_row.dart';
import 'package:zpevnik/components/songbook/songbook_tile.dart';
import 'package:zpevnik/constants.dart';
import 'package:zpevnik/models/songbook.dart';
import 'package:zpevnik/utils/extensions.dart';

const _minTileWidth = 250;

class SongbooksListView extends StatelessWidget {
  final List<Songbook> songbooks;
  final bool shrinkWrap;

  const SongbooksListView({Key? key, required this.songbooks, this.shrinkWrap = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ListView.separated(
        primary: false,
        padding: shrinkWrap ? null : const EdgeInsets.only(top: kDefaultPadding / 2, bottom: 2 * kDefaultPadding),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: songbooks.length,
        itemBuilder: (_, index) => SongbookRow(songbook: songbooks[index]),
        separatorBuilder: (_, __) => const Divider(height: 0),
        shrinkWrap: shrinkWrap,
        physics: shrinkWrap ? const NeverScrollableScrollPhysics() : null,
      ),
    );
  }
}
