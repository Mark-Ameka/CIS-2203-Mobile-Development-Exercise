import 'Contacts.dart';

class PhoneBook {
  List<Contacts> contacts = <Contacts>[];

  PhoneBook(this.contacts);

  void add_contact() {
    var new_contact = new Contacts('Lorenz', 'Rojas', 1007, 'Looc');
    contacts.add(new_contact);
    print('=============== SUCCESSFULLY ADDED NEW CONTACT ===============');
  }

  //util func
  void _viewContact(Contacts contact) {
    print('=====================================');
    print('Full Name: ${contact.lname}, ${contact.fname}');
    print('Phone Number: ${contact.phone_num}');
    print('Address: ${contact.address}');
  }

  void display_contacts() {
    for (var contact in this.contacts) {
      _viewContact(contact);
    }
  }

  //util func
  int _findAccountIndex(int pnum) {
    int x = this.contacts.indexWhere((c) => c.phone_num == pnum);
    return x;
  }

  void remove_contact(int pnum) {
    print(
        '=============== SUCCESSFULLY REMOVED CONTACT: ${pnum} ===============');
    int ret = _findAccountIndex(pnum);
    if (ret == -1) {
      print('Account not found');
    } else {
      this.contacts.removeAt(ret);
    }
  }

  void search_contact(int pnum) {
    print('=============== CONTACT FOUND: ${pnum} ===============');
    int ret = _findAccountIndex(pnum);
    if (ret == -1) {
      print('Account not found');
    } else {
      _viewContact(this.contacts.elementAt(ret));
    }
  }
}
