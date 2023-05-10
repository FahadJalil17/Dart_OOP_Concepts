void main(){
var pkAccount = BankAccount();

print(pkAccount.getBalance()); // here it is initially 0
pkAccount.deposit(100);
print(pkAccount.getBalance());
pkAccount.withDraw(50);
print(pkAccount.getBalance());
}

class BankAccount{
num? _balance = 0;

void deposit(num amount){
  if(amount > 0){
  _balance = _balance! + amount;// balance can be null
  }
  else{
    throw Exception("Amount can not be less than 0");
  }
}

void withDraw(num amount){
  if(amount > 0){
    _balance = _balance! - amount;
  }
  else{
    throw Exception("Amount can not be less than 0");
  }
}

num? getBalance() => _balance;
}