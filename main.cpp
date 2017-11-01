

#include <iostream>
#include <limits>

using namespace std;

// --- DEFINIÇÕES DE TIPOS E CONSTANTES

using Vertice_t = unsigned int;
using Distancia_t = int;

const Vertice_t MAXNOS = 100;
const Distancia_t INFINITO = numeric_limits<Distancia_t>::max();	// retorna o maior número inteiro (Distancia_t=int)

																	// --- A CLASSE GRAFO

class Grafo {
private:
	// * complete com os atributos da classe
	bool _adj[MAXNOS][MAXNOS];
	Distancia_t _peso[MAXNOS][MAXNOS];
	Vertice_t N;
public:
	Grafo(unsigned int n);
	void unep(unsigned int a, unsigned int b, int p);
	void remv(unsigned int a, unsigned int b);
	bool adjacente(unsigned int a, unsigned int b);
	int peso(unsigned int a, unsigned int b);
	int menor_caminho(unsigned int s, unsigned int t, unsigned int precede[]);
};

Grafo::Grafo(unsigned int n)
{
	int i,j;
	for (i = 0;i < n;++i)
	{
		for (j = 0;j < n;++j)
		{
			_adj[i][j] = false;
		}
		_adj[i][j] = false;
	}
	/*for (int i = 0;i < n;++i)
	{

	}*/
	//falso para todos, N tem que valer n
}

void Grafo::unep(unsigned int a, unsigned int b, int p)
{
	_adj[a][b] = true;
	_peso[a][b] = p;
}

void Grafo::remv(unsigned int a, unsigned int b)
{
	_adj[a][b] = false;
}

bool Grafo::adjacente(unsigned int a, unsigned int b)
{
	return(_adj[a][b]);
}

int Grafo::peso(unsigned int a, unsigned int b)
{
	if (_adj[a][b])
	{
		cout << "Peso: " << _peso[a][b];
		return (_peso[a][b]);
	}
	else
	{
		return INFINITO;
	}
}

int Grafo::menor_caminho(unsigned int s, unsigned int t, unsigned int precede[])

	{
		int distancia[MAXNOS];
		bool calculado[MAXNOS];
		int menordist, novadist, i, k;
		int dc;  // dist�ncia calculada de s at� o n� corrente
		for (i = 0; i < N; i++)
		{
			distancia[i] = INFINITO;
			calculado[i] = false;
		}
		distancia[s] = 0;
		calculado[s] = true;
		Vertice_t corrente = s;
		while (corrente != t) {
			menordist = INFINITO;
			dc = distancia[corrente];
			for (i = 0; i < N; i++) {
				if (!calculado[i]){
					//if (dc != INFINITO) {
						novadist = dc + peso(corrente, i);
					if (novadist < distancia[i]) {
						distancia[i] = novadist;
						precede[i] = corrente;
					}
					if (distancia[i] < menordist) {
						menordist = distancia[i];
						k = i;

					}
				} // se j� calculado n�o faz nada
			} // fim do for
			corrente = k;
			calculado[corrente] = true;
		}
		return distancia[t];
	}


// * escreva o corpo de cada metodo da classe Grafo



// --- PROGRAMA PRINCIPAL

int main(int argc, char* argv[])
{
	cout << "TAP: GRAFOS" << endl;

	Vertice_t n;
	cout << "Numero de nos = ";
	cin >> n;

	Grafo g(n);		// instancia grafo com n nos

	Vertice_t a, b;
	Distancia_t peso;

	cout << "Grafo (a >= " << n << ", para terminar):" << endl;
	cout << "   a = ";
	cin >> a;
	while (a < n) {
		cout << "   b = ";
		cin >> b;
		cout << "   peso = ";
		cin >> peso;

		g.unep(a, b, peso);

		cout << "   a = ";
		cin >> a;
	}

	cout << "\nMENOR CAMINHO" << endl;

	Vertice_t s;
	Vertice_t t;
	Vertice_t precede[MAXNOS];

	cout << "   de: ";
	cin >> s;
	cout << "   a:";
	cin >> t;

	Distancia_t d = g.menor_caminho(s, t, precede);

	cout << "Menor distancia = " << d << endl;
	cout << "Menor caminho = ";

	// * escreva o trecho que programa que imprime o menor caminho
	//   a partir do vetor precede


}