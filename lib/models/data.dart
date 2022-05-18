class Coin {
  Coin(
      // model itself
      {required this.symbol,
      required this.price,
      required this.changePercentage});

  String symbol;
  num price;
  num changePercentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
    // going to take from CoinGeckos' API information about coins
    return Coin(
        symbol: json['symbol'],
        price: json['current_price'],
        changePercentage: json['price_change_percentage_24h']);
  }
}

List<Coin> coinList = [];
