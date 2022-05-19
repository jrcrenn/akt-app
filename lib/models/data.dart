class Coin {
  Coin(
      {required this.symbol,
      required this.price,
      required this.changePercentage});

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        symbol: json['symbol'],
        price: json['current_price'],
        changePercentage: json['price_change_percentage_24h']);
  }

  num changePercentage;
  num price;
  String symbol;
}

List<Coin> coinList = [];
