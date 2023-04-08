void main() {
  Si interest = Si(p: 350000, t: 2, r: 5);
  print("Simple Interest :");
  print(interest.si());
}

class Si {
  int p;
  int t;
  int r;

  Si({required this.p, required this.t, required this.r});

  double si() => (p * t * r) / 100;
}
