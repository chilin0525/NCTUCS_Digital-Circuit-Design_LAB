#include <bits/stdc++.h>
using namespace std;

int main() {
    cin.tie(0), ios::sync_with_stdio(0);

    int b1 = 0;
    int b2 = 1;

    for (int i = 0; i <= 15; i++) {
        for (int j = 0; j <= 15; j++) {
            if (i - j - b1 < 0) {
                cout << hex << i <<" "<< j <<" "<< b1 <<" "<< abs(i - j - b1 + 16) <<" "<< (1) << endl;
            } 
            else {
                cout << hex << i <<" "<< j <<" "<< b1 <<" "<< abs(i - j - b1) <<" "<< (0) << endl;
            }
            if (i - j - b2 < 0) {
                cout << hex << i <<" "<< j <<" "<< b2 <<" "<< abs(i - j - b2 + 16) <<" "<< (1) << endl;
            } 
            else {
                cout << hex << i <<" "<< j <<" "<< b2 <<" "<< abs(i - j - b2) <<" "<< (0) << endl;
            }        
        }
    }

    return 0;
}
