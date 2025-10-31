#include <iostream>
using namespace std;

int main() {
  long long a, b;
  cin >> a >> b;
  for (long long n = a; n <= b; ++n) {
    int qty_divs = 0;
    for (long long d = 1; d <= n; ++d)
      if (n % d == 0)
        qty_divs = qty_divs + 1;
    if (qty_divs == 2)
      cout << n << ' ';
  }
  cout << endl;
  return 0;
}