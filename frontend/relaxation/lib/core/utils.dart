// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart';

class Utils {
  static List<P> populateChild<P, C extends P>(List<C> cList) {
    List<P> pList = <P>[];
    for (C item in cList) {
      pList.add(item);
    }
    return pList;
  }

  static dynamic getItem<Q>(List<Q> qList, String matcher) {
    if (Q is AlbumInfo) {
      for (Q item in qList) {
        if ((item as AlbumInfo).id == matcher) {
          return item;
        }
      }
    } else if (Q is PlaylistInfo) {
      for (Q item in qList) {
        if ((item as PlaylistInfo).name == matcher) {
          return item;
        }
      }
    } else if (Q is SongInfo) {
      for (Q item in qList) {
        if ((item as SongInfo).id == matcher) {
          return item;
        }
      }
    }
    return null;
  }
}
