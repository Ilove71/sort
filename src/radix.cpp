

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

void RadixSort(vector<int>& arr, int exp) {
    vector<int> output(arr.size());
    int count[10] = {0};
    
    for (int i = 0; i < arr.size(); i++) {
        count[(arr[i]/exp)%10]++;
    }
    
    for (int i = 1; i < 10; i++) {
        count[i] += count[i-1];
    }
    
    for (int i = arr.size()-1; i >= 0; i--) {
        output[count[(arr[i]/exp)%10]-1] = arr[i];
        count[(arr[i]/exp)%10]--;
    }
    
    for (int i = 0; i < arr.size(); i++) {
        arr[i] = output[i];
    }
}

void radixSort(vector<int>& arr) {
    int maxVal = *max_element(arr.begin(), arr.end());
    
    for (int exp = 1; maxVal/exp > 0; exp *= 10) {
        RadixSort(arr, exp);
    }
}

int main() {
    vector<int> arr = {64, 34, 25, 12, 22, 11, 90};
    
    radixSort(arr);
    
    cout << "Sorted array: ";
    for (int i = 0; i < arr.size(); i++) {
        cout << arr[i] << " ";
    }
    
    return 0;
}