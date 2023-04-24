class SimpleInterest {
  double principle = 0;
  double rate = 0;
  double time = 0;
  double result = 0;

  SimpleInterest(this.principle, this.rate, this.time);

  double si() => result = (principle * rate * time) / 100;
}
