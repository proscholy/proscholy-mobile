curl -X POST https://zpevnik.proscholy.cz/graphql -H "Content-type: application/json" -d '{ "query": "query { authors { id name } tags_enum { id name type_enum } songbooks { id name shortcut color color_text is_private } songs { id name } song_lyrics { id name secondary_name_1 secondary_name_2 lyrics lilypond_svg lang lang_string type_enum has_chords song { id } songbook_records { pivot { id number songbook { id } } } externals { id public_name url media_id media_type authors { id } } authors_pivot { pivot { author { id } } } tags { id } } }" }' > assets/data.json