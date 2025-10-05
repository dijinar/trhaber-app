extension DateFormattingExtension on DateTime {
  static const List<String> _turkishMonths = [
    'Ocak',
    'Şubat',
    'Mart',
    'Nisan',
    'Mayıs',
    'Haziran',
    'Temmuz',
    'Ağustos',
    'Eylül',
    'Ekim',
    'Kasım',
    'Aralık'
  ];

  String formatAsDayMonthYearTr() {
    return "$day ${_turkishMonths[month - 1]} $year";
  }

  String formatAsDayMonthTr() {
    return "$day ${_turkishMonths[month - 1]}";
  }

  String formatAsShortDateTr() {
    return "$day.${month.toString().padLeft(2, '0')}.$year";
  }

  String toRelativeTimeTr() {
    final now = DateTime.now();
    final diff = now.difference(this);

    if (diff.inMinutes < 60) {
      return "${diff.inMinutes} dk önce";
    } else if (diff.inHours < 24) {
      return "${diff.inHours} saat önce";
    } else if (diff.inDays < 7) {
      return "${diff.inDays} gün önce";
    } else {
      return formatAsDayMonthYearTr();
    }
  }
}
