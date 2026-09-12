class DurationUtils {
  static String format(Duration duration) {
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    return '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }
}

class DurationTImeUtils {
  DurationTImeUtils._();

  static String format(Duration d) {
    final hours = d.inHours;
    final minutes = d.inMinutes.remainder(60);
    return '${hours}hours${minutes}m';
  }
}

class FormatUtils {
  FormatUtils._();

  static String amount(double amount) {
    final value = amount == amount.roundToDouble() ? amount.toInt().toString() : amount.toStringAsFixed(2);

    return '\$ $value';
  }

  static String day(DateTime date) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

    final local = date.toLocal();

    return '${local.day} ${months[local.month - 1]} ${local.year}';
  }

  static String time(DateTime date) {
    final local = date.toLocal();

    final hour12 = local.hour % 12 == 0 ? 12 : local.hour % 12;

    final period = local.hour >= 12 ? 'PM' : 'AM';

    final minute = local.minute.toString().padLeft(2, '0');

    return '$hour12:$minute $period';
  }
}
