import 'package:just_audio/just_audio.dart';
import 'package:relaxation/core/shared_data/queue_item.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';

class Queue {
  late List<QueueItem> _songList;
  final AudioPlayer _audioPlayer;

  List<QueueItem> get songList => this._songList;
  Queue(this._audioPlayer, {List<SongInfo> songList = const []})
      : _songList = _castToQueueItem(songList);

  void loadSongs({List<SongInfo> songList = const <SongInfo>[]}) {
    if (songList.length > 0) _songList = _castToQueueItem(songList);
    _audioPlayer
        .setAudioSource(
      ConcatenatingAudioSource(
        children: _songList
            .map(
              (item) => AudioSource.uri(Uri.parse(item.path), tag: item),
            )
            .toList(),
      ),
    )
        .catchError((error) {
      print("An error occured laoding Songs $error");
    });
  }

  static List<QueueItem> _castToQueueItem(List<SongInfo> songList) {
    final List<QueueItem> _queue = [];
    for (SongInfo item in songList) {
      _queue.add(QueueItem.fromDevice(item));
    }
    return _queue;
  }
}
