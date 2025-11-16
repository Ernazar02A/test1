import 'package:intl/intl.dart';

final _inputFormat = DateFormat('yyyy-MM-dd');
final _outputFormat = DateFormat('d MMM', 'ru_RU');

/// Formats date range from ISO format to Russian format
/// Example: "2025-10-14" and "2025-10-15" → "14 окт. - 15 окт."
/// Returns null if parsing fails
String? formatDateRange({
  required String? startDate,
  required String? endDate,
}) {
  try {
    if (startDate == null || endDate == null) return null;
    if (startDate.isEmpty || endDate.isEmpty) return null;

    final start = _inputFormat.parseStrict(startDate);
    final end = _inputFormat.parseStrict(endDate);

    final startFormatted = _outputFormat.format(start);
    final endFormatted = _outputFormat.format(end);

    return '$startFormatted - $endFormatted';
  } catch (e) {
    return null;
  }
}

extension DateFormatExtension on String {
  String toFormattedDate() {
    DateTime dateTime = DateTime.parse(this);
    return DateFormat('dd.MM.yyyy').format(dateTime);
  }

  /// Formats time from "HH:mm:ss" to "HH:mm"
  /// Example: "14:00:00" → "14:00"
  /// Returns original string if format is invalid
  String toFormattedTime() {
    try {
      final parts = split(':');
      if (parts.length >= 2) {
        return '${parts[0]}:${parts[1]}';
      }
      return this;
    } catch (e) {
      return this;
    }
  }
}
