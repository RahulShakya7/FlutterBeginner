// Write a dart program to check whether a character is a vowel or consonant.
void main(List<String> args) {
  String? ch = "a";
  if (check(ch)) {
    print("Vowel");
  } else {
    print("Consonant");
  }
}

bool check(String ch) {
  if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
    return true;
  } else {
    return false;
  }
}
