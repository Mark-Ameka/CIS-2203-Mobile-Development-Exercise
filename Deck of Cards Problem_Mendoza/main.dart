import 'Deck Program/Card.dart';
import 'Deck Program/MakeDeck.dart';

void main() {
  List<Card> cards = <Card>[];
  MakeDeck deck = MakeDeck(cards);
  deck.makeDeck();

  /* TEST CASE 1: Shuffle */
  // deck.shuffle();
  deck.printCards();

  /* TEST CASE 2: Cards With Suit */
  // deck.cardsWithSuit('Diamonds');
}
