int score(String word) {
  String upperWord = word.toUpperCase();
  int res = 0;
  int tmp = 0;
  for (int i = 0; i < upperWord.length; i++) {
    tmp = switch (upperWord[i]) {
      "A" || "E" || "I" || "O" || "U" || "L" || "N" || "R" || "S" || "T" => 1,
      "D" || "G" => 2,
      "B" || "C" || "M" || "P" => 3,
      "F" || "H" || "V" || "W" || "Y" => 4,
      "K" => 5,
      "J" || "X" => 8,
      "Q" || "Z" => 10,
      _ => 0,
    };
    res += tmp;
  }
  return res;
}
