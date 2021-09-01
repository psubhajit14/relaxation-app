class Utils {
  static List<P> populateChild<P, C extends P>(List<C> cList) {
    List<P> pList = <P>[];
    for (C item in cList) {
      pList.add(item);
    }
    return pList;
  }
}
