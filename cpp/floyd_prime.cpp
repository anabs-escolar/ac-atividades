#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;

    int num = 2; // número a testar
    for(int i = 1; i <= n; i++) {      // cada linha
        int count = 0;                      // quantos números já colocados na linha
        while(count < i) {                  // preencher toda a linha
            int qty_divs = 0;
            for (long long d = 1; d <= num; ++d)
                if (num % d == 0)
                    qty_divs = qty_divs + 1;
            if (qty_divs == 2) {
                cout << num << ' ';
                count++;
            }
            num++; // próximo número
        }
        cout << endl;
    }
}
