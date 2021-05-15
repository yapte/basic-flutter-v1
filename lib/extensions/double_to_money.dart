extension ToMoney on double {
  String toMoney() {
    return this.toStringAsFixed(2).replaceAll('.00', '');
  }
}
