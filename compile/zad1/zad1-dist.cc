#include "zad1-dist.h"
#include <string>
using namespace std;
int dist(string s, string t)
{
	int m = s.size();
	int n = t.size();
	int d[m+1][n+1];
	for (int i=0; i<=m; i++)
	{
		d[i][0] = i;
	}
	for (int j=1; j<=n; j++)
	{
		d[0][j] = j;
	}

	for (int i=1; i<=m; i++) {
	for (int j=1; j<=n; j++) {
		int cost = (s[i] == t[j]) ? 0 : 1;
		d[i][j] = min(min( d[i-1][j] + 1, d[i][j-1] + 1 ), d[i-1][j-1] + cost);
	}
	}
	return d[m][n];
}
