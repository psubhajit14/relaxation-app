import 'package:mockito/annotations.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/add_song_to_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_album.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_albums.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_playlists.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_all_songs.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_song.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_album.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/get_songs_by_playlist.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/search_all_albums.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/search_all_songs.dart';
import 'package:relaxation/features/data_query_feature/domain/usecases/usecases.dart';

@GenerateMocks([UGetAlbum])
@GenerateMocks([UGetAllAlbums])
@GenerateMocks([UGetAllPlaylists])
@GenerateMocks([UGetAllSongs])
@GenerateMocks([UGetSong])
@GenerateMocks([UGetSongsByAlbum])
@GenerateMocks([UGetSongsByPlaylist])
@GenerateMocks([USearchAllAlbums])
@GenerateMocks([USearchAllSongs])
@GenerateMocks([UAddSongsToPlaylist])
@GenerateMocks([URemoveSongsToPlaylist])
@GenerateMocks([URemovePlaylist])
@GenerateMocks([UCreatePlaylist])
void main() {}
