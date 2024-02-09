
#include <iostream>
using namespace std;

void countingSort(int arr[], int n) {
    int output[n];
    int count[256] = {0};
    
    for (int i = 0; i < n; i++) {
        count[arr[i]]++;
    }
    
    for (int i = 1; i <= 255; i++) {
        count[i] += count[i-1];
    }
    
    for (int i = n-1; i >= 0; i--) {
        output[count[arr[i]]-1] = arr[i];
        count[arr[i]]--;
    }
    
    for (int i = 0; i < n; i++) {
        arr[i] = output[i];
    }
}

int main() {
    int arr[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(arr)/sizeof(arr[0]);
    
    countingSort(arr, n);
    
    cout << "Sorted array: ";
    for (int i = 0; i < n; i++) {
        cout << arr[i] << " ";
    }
    
    return 0;
}