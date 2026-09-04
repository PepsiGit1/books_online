import 'package:books_online/features/home/data/model/text_segment.dart';

class SrtParser {
  static List<TextSegment> parse(String content) {
    final blocks = content.replaceAll('\r\n', '\n').split(RegExp(r'\n\s*\n'));

    final segments = <TextSegment>[];

    for (final block in blocks) {
      final lines = block.split('\n');

      if (lines.length < 3) continue;

      final timeLine = lines[1];

      if (!timeLine.contains('-->')) continue;

      final times = timeLine.split('-->');

      if (times.length != 2) continue;

      final start = _parseTime(times[0].trim());
      final end = _parseTime(times[1].trim());

      final text = lines.sublist(2).join(' ').trim();

      if (text.isEmpty) continue;

      segments.add(TextSegment(start: start, end: end, text: text));
    }

    return segments;
  }

  static Duration _parseTime(String value) {
    final parts = value.split(':');

    final hours = int.parse(parts[0]);
    final minutes = int.parse(parts[1]);

    final secondsParts = parts[2].split(',');

    final seconds = int.parse(secondsParts[0]);
    final milliseconds = int.parse(secondsParts[1].padRight(3, '0'));

    return Duration(hours: hours, minutes: minutes, seconds: seconds, milliseconds: milliseconds);
  }
}
