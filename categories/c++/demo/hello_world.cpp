#include <iostream>
#include <string>

using namespace std;

#define PI 3.14159
#define NEWLINE '\n'

double c(int r) {
  return 2 * PI * r;
}

class Rectangle {
  int width, height;
  public:
    void set_values (int, int);
    int area () {return width * height;}
};

void Rectangle::set_values (int x, int y) {
  width = x;
  height = y;
}

// g++ hello_world.cpp
int main()
{
  // string str = "I am a boy.";
  // int r;
  // cout << "Please enter an integer value of r: ";
  // cin >> r;
  // double circle = c(r);
  // cout << "the circle is ";
  // cout << circle;
  // cout << endl;

  int arr [] = {16, 2, 77, 40, 12071};
  for ( int n=0 ; n<5 ; ++n )
  {
    cout << arr[n];
    cout << endl;
  }
  Rectangle rect;
  rect.set_values(100, 200);
  cout << rect.area();
  cout << endl;

  return 0;
}
