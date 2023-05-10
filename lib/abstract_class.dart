void main(){
TaxCalculator calculator = TaxCalculator2022();
calculator.calculate();
}

abstract class TaxCalculator{
  int? baseInterest = 5;
  void calculate();
}

class TaxCalculator2021 implements TaxCalculator{
  @override
  void calculate() {
    // TODO: implement calculate
    print("20% tax is 1Lac");
  }

  @override
  int? baseInterest;
}

class TaxCalculator2022 implements TaxCalculator{
  @override
  void calculate() {
    // TODO: implement calculate
    print("40% tax is 2Lac");
  }

  @override
  int? baseInterest;
}