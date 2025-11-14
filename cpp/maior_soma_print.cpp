#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    int vet[n];
    // leitura dos 10 números
    for (int i = 0; i < n; i++) {
        cin >> vet[i];
    }
    // maior soma de adjacentes
    int maior_soma = 0;
    int pos = 0;
    int qtd = 1;
    for (int i = 0; i < n; i++) {
        // cout << "i"<< i<< endl;
        int soma = vet[i];
        int a_qtd = 1;
        for (int j = i+1; j < n; j++){
            // cout << "j" << j << endl;
            soma = soma + vet[j];
            a_qtd++;
            if (soma > maior_soma) {
                maior_soma = soma;
                pos = i;
                qtd = a_qtd;
            }
        }
    }
    cout << maior_soma << endl;
    cout << pos << endl;
    cout << qtd << endl;
    //cout << vet[pos] << "+" << vet[pos + 1] << "=" << maior_soma << endl;
    // cout << "p" << pos + 1 << endl; // posição começando em 1
    return 0;
}
