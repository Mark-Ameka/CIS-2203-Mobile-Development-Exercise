import 'Card.dart';

class MakeDeck {
  List<Card> cards = <Card>[];
  var ranks = [
    'Ace',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Jack',
    'King',
    'Queen',
  ];
  var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

  MakeDeck(this.cards) {}

  void makeDeck() {
    for (var s in this.suits) {
      for (var r in this.ranks) {
        var new_card = new Card(r, s);
        this.cards.add(new_card);
      }
    }
  }

  String toString() {
    return this.cards.toString();
  }

  //Util Func
  void _view_cart(var card) {
    print(card);
  }

  void printCards() {
    for (var c in this.cards) {
      _view_cart(c);
    }
  }

  void cardsWithSuit(String suit) {
    var find = this.cards.where((c) => c.suit == suit);
    _view_cart(find);
  }

  void shuffle() {
    this.cards.shuffle();
  }
}
