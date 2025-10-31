#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int num = 1; // número a testar
    for(int i = 1; i <= n; i++) {      // cada linha
        int count = 0;                      // quantos números já colocados na linha
        while(count < i) {                  // preencher toda a linha
            if (num % 11 == 0 || num % 13 == 0 || num % 17 == 0) {
                cout << num << " ";
                count++;
            }
            num++; // próximo número
        }
        cout << endl;
    }
}
