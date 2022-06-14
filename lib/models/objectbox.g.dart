// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../models/author.dart';
import '../models/external.dart';
import '../models/news_item.dart';
import '../models/song.dart';
import '../models/song_lyric.dart';
import '../models/songbook.dart';
import '../models/songbook_record.dart';
import '../models/tag.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(4, 6296825599350518621),
      name: 'Tag',
      lastPropertyId: const IdUid(2, 5611127642092193137),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 1202312863979149096),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 5611127642092193137),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(6, 2374131111926575279),
      name: 'Song',
      lastPropertyId: const IdUid(2, 7814837987719399877),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8353537239731189981),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 7814837987719399877),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'songLyrics', srcEntity: 'SongLyric', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(7, 8797415451663897865),
      name: 'Author',
      lastPropertyId: const IdUid(2, 4613344973069529154),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3363642283487101516),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 4613344973069529154),
            name: 'name',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(8, 2724259771969584896),
      name: 'Songbook',
      lastPropertyId: const IdUid(6, 7680416521438868557),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 4042315241527544300),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 8660858498312652364),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3447729507208907805),
            name: 'shortcut',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4427598841893313809),
            name: 'color',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 3006707744087714809),
            name: 'colorText',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 7680416521438868557),
            name: 'isPrivate',
            type: 1,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(
            name: 'songbookRecords', srcEntity: 'SongbookRecord', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(9, 7232145165103886962),
      name: 'SongbookRecord',
      lastPropertyId: const IdUid(9, 334605257073641595),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6054907260033069130),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(7, 7196326332169539171),
            name: 'songLyricId',
            type: 11,
            flags: 520,
            indexId: const IdUid(3, 942306867161783693),
            relationTarget: 'SongLyric'),
        ModelProperty(
            id: const IdUid(8, 2070073359812025263),
            name: 'songbookId',
            type: 11,
            flags: 520,
            indexId: const IdUid(4, 8918108328092906748),
            relationTarget: 'Songbook'),
        ModelProperty(
            id: const IdUid(9, 334605257073641595),
            name: 'number',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(10, 3974850738104585390),
      name: 'External',
      lastPropertyId: const IdUid(4, 1676604361532699457),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3010716229405627844),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 3242483719965434956),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 1606944041271966875),
            name: 'mediaId',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1676604361532699457),
            name: 'songLyricId',
            type: 11,
            flags: 520,
            indexId: const IdUid(5, 2362390301723731104),
            relationTarget: 'SongLyric')
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(11, 6447883453535376640),
      name: 'SongLyric',
      lastPropertyId: const IdUid(11, 7728117412880047888),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3863298287914509345),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 441804169355063782),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 172858861373732984),
            name: 'secondaryName1',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 8016708352967187219),
            name: 'secondaryName2',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4090781135399724519),
            name: 'lyrics',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3380582964501408304),
            name: 'lilypond',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 298128507441633315),
            name: 'lang',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 4779117914827910420),
            name: 'langDescription',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 6562831056286277746),
            name: 'songId',
            type: 11,
            flags: 520,
            indexId: const IdUid(6, 6968220845399115842),
            relationTarget: 'Song'),
        ModelProperty(
            id: const IdUid(11, 7728117412880047888),
            name: 'dbType',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(6, 8595379047063016810),
            name: 'authors',
            targetId: const IdUid(7, 8797415451663897865)),
        ModelRelation(
            id: const IdUid(7, 8890618311243611972),
            name: 'tags',
            targetId: const IdUid(4, 6296825599350518621))
      ],
      backlinks: <ModelBacklink>[
        ModelBacklink(name: 'externals', srcEntity: 'External', srcField: ''),
        ModelBacklink(
            name: 'songbookRecords', srcEntity: 'SongbookRecord', srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(12, 4858060119845349265),
      name: 'NewsItem',
      lastPropertyId: const IdUid(4, 4137592721431574793),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3981388212350529487),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(2, 7163479903263102026),
            name: 'text',
            type: 9,
            flags: 2048,
            indexId: const IdUid(7, 2335111573671041561)),
        ModelProperty(
            id: const IdUid(3, 6038618770164161164),
            name: 'link',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 4137592721431574793),
            name: 'expiresAt',
            type: 10,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(12, 4858060119845349265),
      lastIndexId: const IdUid(7, 2335111573671041561),
      lastRelationId: const IdUid(7, 8890618311243611972),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [
        6628950258912287707,
        3997966892313177785,
        4828503391288265608,
        5722656750256100534
      ],
      retiredIndexUids: const [],
      retiredPropertyUids: const [
        1286404604582147955,
        2045942571545498429,
        4156807171975174171,
        2769258185308251592,
        2750485277817544042,
        57379581087889430,
        2303092288825628002,
        5181839766778648572,
        1535607057038781256,
        7214825174623022750,
        2487210589202474752,
        391283423985779645,
        6828233565720179886,
        2016746920009926401,
        1866660310130334498,
        8258290526986479967,
        9186643213110364361,
        2012362637196544559,
        4198504091761231768,
        2798094153154113871,
        809050937703252492,
        4774006349046573734,
        329289963093354246,
        1689786811235179787,
        6671414168712327567,
        638797381657980389,
        2411306619182484870,
        1231181773716438848,
        7671315634081304656,
        3009414053170717053
      ],
      retiredRelationUids: const [
        7916874752771113838,
        8475939472281092043,
        908885689419134235
      ],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Tag: EntityDefinition<Tag>(
        model: _entities[0],
        toOneRelations: (Tag object) => [],
        toManyRelations: (Tag object) => {},
        getId: (Tag object) => object.id,
        setId: (Tag object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Tag.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Tag object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Tag(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''));

          return object;
        }),
    Song: EntityDefinition<Song>(
        model: _entities[1],
        toOneRelations: (Song object) => [],
        toManyRelations: (Song object) => {
              RelInfo<SongLyric>.toOneBacklink(
                      9, object.id, (SongLyric srcObject) => srcObject.song):
                  object.songLyrics
            },
        getId: (Song object) => object.id,
        setId: (Song object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Song.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Song object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Song(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''));
          InternalToManyAccess.setRelInfo(
              object.songLyrics,
              store,
              RelInfo<SongLyric>.toOneBacklink(
                  9, object.id, (SongLyric srcObject) => srcObject.song),
              store.box<Song>());
          return object;
        }),
    Author: EntityDefinition<Author>(
        model: _entities[2],
        toOneRelations: (Author object) => [],
        toManyRelations: (Author object) => {},
        getId: (Author object) => object.id,
        setId: (Author object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Author.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Author object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Author(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''));

          return object;
        }),
    Songbook: EntityDefinition<Songbook>(
        model: _entities[3],
        toOneRelations: (Songbook object) => [],
        toManyRelations: (Songbook object) => {
              RelInfo<SongbookRecord>.toOneBacklink(8, object.id,
                      (SongbookRecord srcObject) => srcObject.songbook):
                  object.songbookRecords
            },
        getId: (Songbook object) => object.id,
        setId: (Songbook object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field Songbook.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (Songbook object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final shortcutOffset = fbb.writeString(object.shortcut);
          final colorOffset =
              object.color == null ? null : fbb.writeString(object.color!);
          final colorTextOffset = object.colorText == null
              ? null
              : fbb.writeString(object.colorText!);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, shortcutOffset);
          fbb.addOffset(3, colorOffset);
          fbb.addOffset(4, colorTextOffset);
          fbb.addBool(5, object.isPrivate);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Songbook(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              const fb.BoolReader().vTableGet(buffer, rootOffset, 14, false));
          InternalToManyAccess.setRelInfo(
              object.songbookRecords,
              store,
              RelInfo<SongbookRecord>.toOneBacklink(8, object.id,
                  (SongbookRecord srcObject) => srcObject.songbook),
              store.box<Songbook>());
          return object;
        }),
    SongbookRecord: EntityDefinition<SongbookRecord>(
        model: _entities[4],
        toOneRelations: (SongbookRecord object) =>
            [object.songLyric, object.songbook],
        toManyRelations: (SongbookRecord object) => {},
        getId: (SongbookRecord object) => object.id,
        setId: (SongbookRecord object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field SongbookRecord.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (SongbookRecord object, fb.Builder fbb) {
          final numberOffset = fbb.writeString(object.number);
          fbb.startTable(10);
          fbb.addInt64(0, object.id);
          fbb.addInt64(6, object.songLyric.targetId);
          fbb.addInt64(7, object.songbook.targetId);
          fbb.addOffset(8, numberOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SongbookRecord(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 20, ''));
          object.songLyric.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 16, 0);
          object.songLyric.attach(store);
          object.songbook.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 18, 0);
          object.songbook.attach(store);
          return object;
        }),
    External: EntityDefinition<External>(
        model: _entities[5],
        toOneRelations: (External object) => [object.songLyric],
        toManyRelations: (External object) => {},
        getId: (External object) => object.id,
        setId: (External object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field External.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (External object, fb.Builder fbb) {
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final mediaIdOffset =
              object.mediaId == null ? null : fbb.writeString(object.mediaId!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, mediaIdOffset);
          fbb.addInt64(3, object.songLyric.targetId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = External(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 6),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8));
          object.songLyric.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);
          object.songLyric.attach(store);
          return object;
        }),
    SongLyric: EntityDefinition<SongLyric>(
        model: _entities[6],
        toOneRelations: (SongLyric object) => [object.song],
        toManyRelations: (SongLyric object) => {
              RelInfo<SongLyric>.toMany(6, object.id): object.authors,
              RelInfo<SongLyric>.toMany(7, object.id): object.tags,
              RelInfo<External>.toOneBacklink(4, object.id,
                      (External srcObject) => srcObject.songLyric):
                  object.externals,
              RelInfo<SongbookRecord>.toOneBacklink(7, object.id,
                      (SongbookRecord srcObject) => srcObject.songLyric):
                  object.songbookRecords
            },
        getId: (SongLyric object) => object.id,
        setId: (SongLyric object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field SongLyric.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (SongLyric object, fb.Builder fbb) {
          final nameOffset = fbb.writeString(object.name);
          final secondaryName1Offset = object.secondaryName1 == null
              ? null
              : fbb.writeString(object.secondaryName1!);
          final secondaryName2Offset = object.secondaryName2 == null
              ? null
              : fbb.writeString(object.secondaryName2!);
          final lyricsOffset =
              object.lyrics == null ? null : fbb.writeString(object.lyrics!);
          final lilypondOffset = object.lilypond == null
              ? null
              : fbb.writeString(object.lilypond!);
          final langOffset =
              object.lang == null ? null : fbb.writeString(object.lang!);
          final langDescriptionOffset = object.langDescription == null
              ? null
              : fbb.writeString(object.langDescription!);
          fbb.startTable(12);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, nameOffset);
          fbb.addOffset(2, secondaryName1Offset);
          fbb.addOffset(3, secondaryName2Offset);
          fbb.addOffset(4, lyricsOffset);
          fbb.addOffset(5, lilypondOffset);
          fbb.addOffset(6, langOffset);
          fbb.addOffset(7, langDescriptionOffset);
          fbb.addInt64(8, object.song.targetId);
          fbb.addInt64(10, object.dbType);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SongLyric(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 8),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 10),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 12),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 14),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 16),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGetNullable(buffer, rootOffset, 18),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 24, 0));
          object.song.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 20, 0);
          object.song.attach(store);
          InternalToManyAccess.setRelInfo(object.authors, store,
              RelInfo<SongLyric>.toMany(6, object.id), store.box<SongLyric>());
          InternalToManyAccess.setRelInfo(object.tags, store,
              RelInfo<SongLyric>.toMany(7, object.id), store.box<SongLyric>());
          InternalToManyAccess.setRelInfo(
              object.externals,
              store,
              RelInfo<External>.toOneBacklink(
                  4, object.id, (External srcObject) => srcObject.songLyric),
              store.box<SongLyric>());
          InternalToManyAccess.setRelInfo(
              object.songbookRecords,
              store,
              RelInfo<SongbookRecord>.toOneBacklink(7, object.id,
                  (SongbookRecord srcObject) => srcObject.songLyric),
              store.box<SongLyric>());
          return object;
        }),
    NewsItem: EntityDefinition<NewsItem>(
        model: _entities[7],
        toOneRelations: (NewsItem object) => [],
        toManyRelations: (NewsItem object) => {},
        getId: (NewsItem object) => object.id,
        setId: (NewsItem object, int id) {
          if (object.id != id) {
            throw ArgumentError('Field NewsItem.id is read-only '
                '(final or getter-only) and it was declared to be self-assigned. '
                'However, the currently inserted object (.id=${object.id}) '
                "doesn't match the inserted ID (ID $id). "
                'You must assign an ID before calling [box.put()].');
          }
        },
        objectToFB: (NewsItem object, fb.Builder fbb) {
          final textOffset = fbb.writeString(object.text);
          final linkOffset = fbb.writeString(object.link);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(1, textOffset);
          fbb.addOffset(2, linkOffset);
          fbb.addInt64(3, object.expiresAt?.millisecondsSinceEpoch);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final expiresAtValue =
              const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final object = NewsItem(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 6, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 8, ''),
              expiresAtValue == null
                  ? null
                  : DateTime.fromMillisecondsSinceEpoch(expiresAtValue));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Tag] entity fields to define ObjectBox queries.
class Tag_ {
  /// see [Tag.id]
  static final id = QueryIntegerProperty<Tag>(_entities[0].properties[0]);

  /// see [Tag.name]
  static final name = QueryStringProperty<Tag>(_entities[0].properties[1]);
}

/// [Song] entity fields to define ObjectBox queries.
class Song_ {
  /// see [Song.id]
  static final id = QueryIntegerProperty<Song>(_entities[1].properties[0]);

  /// see [Song.name]
  static final name = QueryStringProperty<Song>(_entities[1].properties[1]);
}

/// [Author] entity fields to define ObjectBox queries.
class Author_ {
  /// see [Author.id]
  static final id = QueryIntegerProperty<Author>(_entities[2].properties[0]);

  /// see [Author.name]
  static final name = QueryStringProperty<Author>(_entities[2].properties[1]);
}

/// [Songbook] entity fields to define ObjectBox queries.
class Songbook_ {
  /// see [Songbook.id]
  static final id = QueryIntegerProperty<Songbook>(_entities[3].properties[0]);

  /// see [Songbook.name]
  static final name = QueryStringProperty<Songbook>(_entities[3].properties[1]);

  /// see [Songbook.shortcut]
  static final shortcut =
      QueryStringProperty<Songbook>(_entities[3].properties[2]);

  /// see [Songbook.color]
  static final color =
      QueryStringProperty<Songbook>(_entities[3].properties[3]);

  /// see [Songbook.colorText]
  static final colorText =
      QueryStringProperty<Songbook>(_entities[3].properties[4]);

  /// see [Songbook.isPrivate]
  static final isPrivate =
      QueryBooleanProperty<Songbook>(_entities[3].properties[5]);
}

/// [SongbookRecord] entity fields to define ObjectBox queries.
class SongbookRecord_ {
  /// see [SongbookRecord.id]
  static final id =
      QueryIntegerProperty<SongbookRecord>(_entities[4].properties[0]);

  /// see [SongbookRecord.songLyric]
  static final songLyric =
      QueryRelationToOne<SongbookRecord, SongLyric>(_entities[4].properties[1]);

  /// see [SongbookRecord.songbook]
  static final songbook =
      QueryRelationToOne<SongbookRecord, Songbook>(_entities[4].properties[2]);

  /// see [SongbookRecord.number]
  static final number =
      QueryStringProperty<SongbookRecord>(_entities[4].properties[3]);
}

/// [External] entity fields to define ObjectBox queries.
class External_ {
  /// see [External.id]
  static final id = QueryIntegerProperty<External>(_entities[5].properties[0]);

  /// see [External.name]
  static final name = QueryStringProperty<External>(_entities[5].properties[1]);

  /// see [External.mediaId]
  static final mediaId =
      QueryStringProperty<External>(_entities[5].properties[2]);

  /// see [External.songLyric]
  static final songLyric =
      QueryRelationToOne<External, SongLyric>(_entities[5].properties[3]);
}

/// [SongLyric] entity fields to define ObjectBox queries.
class SongLyric_ {
  /// see [SongLyric.id]
  static final id = QueryIntegerProperty<SongLyric>(_entities[6].properties[0]);

  /// see [SongLyric.name]
  static final name =
      QueryStringProperty<SongLyric>(_entities[6].properties[1]);

  /// see [SongLyric.secondaryName1]
  static final secondaryName1 =
      QueryStringProperty<SongLyric>(_entities[6].properties[2]);

  /// see [SongLyric.secondaryName2]
  static final secondaryName2 =
      QueryStringProperty<SongLyric>(_entities[6].properties[3]);

  /// see [SongLyric.lyrics]
  static final lyrics =
      QueryStringProperty<SongLyric>(_entities[6].properties[4]);

  /// see [SongLyric.lilypond]
  static final lilypond =
      QueryStringProperty<SongLyric>(_entities[6].properties[5]);

  /// see [SongLyric.lang]
  static final lang =
      QueryStringProperty<SongLyric>(_entities[6].properties[6]);

  /// see [SongLyric.langDescription]
  static final langDescription =
      QueryStringProperty<SongLyric>(_entities[6].properties[7]);

  /// see [SongLyric.song]
  static final song =
      QueryRelationToOne<SongLyric, Song>(_entities[6].properties[8]);

  /// see [SongLyric.dbType]
  static final dbType =
      QueryIntegerProperty<SongLyric>(_entities[6].properties[9]);

  /// see [SongLyric.authors]
  static final authors =
      QueryRelationToMany<SongLyric, Author>(_entities[6].relations[0]);

  /// see [SongLyric.tags]
  static final tags =
      QueryRelationToMany<SongLyric, Tag>(_entities[6].relations[1]);
}

/// [NewsItem] entity fields to define ObjectBox queries.
class NewsItem_ {
  /// see [NewsItem.id]
  static final id = QueryIntegerProperty<NewsItem>(_entities[7].properties[0]);

  /// see [NewsItem.text]
  static final text = QueryStringProperty<NewsItem>(_entities[7].properties[1]);

  /// see [NewsItem.link]
  static final link = QueryStringProperty<NewsItem>(_entities[7].properties[2]);

  /// see [NewsItem.expiresAt]
  static final expiresAt =
      QueryIntegerProperty<NewsItem>(_entities[7].properties[3]);
}
