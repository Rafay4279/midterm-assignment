void main() {
  //1st instance
  BankAccount acc = BankAccount(
      balance: 0,
      account_number: 010123456789,
      account_type: "Saving Account",
      interest_rate: 0.065);

//2nd instance
  BankAccount acc2 = BankAccount(
      balance: 0,
      account_number: 010987654321,
      account_type: "Fixed Deposit",
      interest_rate: 0.068);

//calling the functions of 1st instance
  acc.deposit_balance(9000);
  acc.withdraw_amount(590);
  acc.add_interest();
  acc.display();

//calling the functions of 2nd instance
  acc2.deposit_balance(6598);
  acc2.withdraw_amount(598);
  acc2.add_interest();
  acc2.display();
}

class BankAccount {
  int account_number;
  double balance;
  String account_type;
  double interest_rate;

  BankAccount(
      {required this.balance,
      required this.account_number,
      required this.account_type,
      required this.interest_rate});

//Function to Show Account Number
  void accountNumb() {
    print("Your account No is $account_number");
  }

//Function to Deposit Amount
  void deposit_balance(int amount) {
    balance += amount;
    print("\n" + "The amount $amount has been deposited in your Account");
  }

//Function to Withdraw Amount
  void withdraw_amount(int withdrawAmount) {
    if (balance > withdrawAmount) {
      (balance -= withdrawAmount);
      print(
          "$withdrawAmount has been withdraw from Your Account No $account_number. Your new Balance is $balance");
    } else {
      print("You Cannot Withdraw More Than The Current Balance");
    }
  }

//Function to Add Interest
  void add_interest() {
    double interest = balance * interest_rate;
    balance += interest;
    print("The Interest has been added. Your balance is now $balance" + "\n");
  }

//Function to Display Details of Account
  void display() {
    print("Your Account Number is $account_number");
    print("Your account is $account_type");
    print("The interest rate is $interest_rate");
    print("Your Balance is $balance");
  }
}
