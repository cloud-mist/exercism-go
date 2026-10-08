class AtbashCipher {
  // calc
  String calc(String alpha) {
    int code = alpha.toLowerCase().codeUnitAt(0);
    if (code >= 97 && code <= 122) {
      return String.fromCharCode(219 - code);
    }
    return alpha;
  }

  bool isAlphaNum(String alpha) {
    int code = alpha.toLowerCase().codeUnitAt(0);
    if ((code >= 97 && code <= 122) || (code >= 48 && code <= 57)) {
      return true;
    }
    return false;
  }

  String chuli(String ss) {
    String s = "";
    for (int i = 0; i < ss.length; i++) {
      if (isAlphaNum(ss[i])) {
        s += ss[i];
      }
    }
    return s;
  }

  String encode(String ss) {
    String s = chuli(ss);

    var res = "";
    int index = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] != " ") {
        res += calc(s[i]);
        index++;
      }
      if (index % 5 == 0) {
        res += " ";
      }
    }
    return res.trim();
  }

  String decode(String ss) {
    String s = chuli(ss);
    var res = "";
    for (var i = 0; i < s.length; i++) {
      if (s[i] != " ") {
        res += calc(s[i]);
      }
    }
    return res;
  }
}
