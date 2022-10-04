import 'PhoneBook/Contacts.dart';
import 'PhoneBook/PhoneBook.dart';

void main() {
  List<Contacts> new_contact = <Contacts>[];
  PhoneBook new_book = PhoneBook(new_contact);

  /* TEST CASE: 1 */
  new_contact.add(Contacts('Kivian', 'Illova', 1002, 'Cebu'));
  new_contact.add(Contacts('Mark', 'Mendoza', 1003, 'Calawisan'));
  new_contact.add(Contacts('Miguel', 'Reyes', 1004, 'Bohol'));
  new_contact.add(Contacts('Lourdes', 'Campomanes', 1005, 'Cebu'));
  new_contact.add(Contacts('Mary', 'Pineda', 1006, 'Talamban'));
  new_book.display_contacts();

  /* TEST CASE: 2 */
  new_book.add_contact();
  new_book.display_contacts();

  /* TEST CASE: 3 */
  new_book.remove_contact(1005);
  new_book.display_contacts();

  /* TEST CASE: 4 */
  new_book.search_contact(1003);
}
