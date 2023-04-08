abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Circle c = Circle(4);
  print("Area of Circle : ${c.area()}");
  Rectangle r = Rectangle(4, 5);
  print("Area of Rectangle : ${r.area()}");
}
