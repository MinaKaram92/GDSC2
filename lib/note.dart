class Note {
  String? _subject;
  String? _date;
  String? _time;

  Note({required String subject, required String date, required String time}) {
    _subject = subject;
    _date = date;
    _time = time;
  }

  String? get subject => _subject;
  String? get date => _date;
  String? get time => _time;
}
