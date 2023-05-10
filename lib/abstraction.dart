void main() {
  var pkAccount = BankAccount.open(); // we are using named constructor
  print(pkAccount.getBalance());
  pkAccount.deposit(100);
  print(pkAccount.getBalance());
  pkAccount.withDraw(80);
  print(pkAccount.getBalance());
}

class BankAccount {
  num? _balance = 0;

  num? getBalance() => _balance;

  BankAccount.open() {
    _submitPapers();
    _approvalFromManager();
    _submitInDB();
  }

  void _submitPapers() {}

  void _approvalFromManager() {}

  void _submitInDB() {}

  void deposit(int? amount) {
    if (amount! > 0) {
      _balance = _balance! + amount;
    } else {
      print("Amount cannot be less than 0");
    }
  }

  void withDraw(int? amount) {
    if (amount! > 0) {
      _balance = _balance! - amount;
    } else {
      print("Amount cannot be less than 0");
    }
  }
}
