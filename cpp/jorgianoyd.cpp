#include <iostream>
using namespace std;

// O trinângulo de Jorgianoyde é uma figura parecida com o triângulo de floyde, porém com alinhamento para direita e só pode ser representado em até 10 linhas.

int main() {
  int n, num = 0;
  cin >> n;
  if (n < 1 || 10 < n) {
    cout << "Error" << endl;
    return 0;
  }
  for (int i = 1; i <= n; i++) {
    for (int k = 0; k < n-i; k++) {
      cout << " ";
    }
    for (int j = 1; j <= i; j++) {
      cout << num;
    }
    num++;
    cout << endl;
  }
  return 0;
}


