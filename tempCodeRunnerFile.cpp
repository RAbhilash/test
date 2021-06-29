#include<bits/stdc++.h>
using namespace std;
int main()
{
    list<int> l;
    for (int i=0; i<5; ++i)
    l.push_back(i);
    for (auto i=l.rbegin(); i!=l.rend(); ++i)
    cout<<*i<<" ";
}