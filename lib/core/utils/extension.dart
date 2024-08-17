String _turkishToEnglishConvertor(String input) {
  Map<String, String> turkishMap = {
    'ç': 'c',
    'Ç': 'C',
    'ğ': 'g',
    'Ğ': 'G',
    'ı': 'i',
    'İ': 'I',
    'ö': 'o',
    'Ö': 'O',
    'ş': 's',
    'Ş': 'S',
    'ü': 'u',
    'Ü': 'U',
  };

  StringBuffer output = StringBuffer();
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    output.write(turkishMap[char] ?? char);
  }

  return output.toString();
}

extension TurkishToEnglish on String {
  String get turkishToEnglish => _turkishToEnglishConvertor(this);
}
