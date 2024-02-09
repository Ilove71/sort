# Реализация методов сортировки на языке С++

### BubbleSort(сортировка пузырьком):

- Принцип работы: 
Принцип работы сортировки пузырьком заключается в последовательном проходе по массиву и сравнении соседних элементов. Если текущий элемент больше следующего, то они меняются местами. Этот процесс повторяется до тех пор, пока массив не будет полностью отсортирован.  
В начале каждой итерации внешнего цикла самый большой элемент "всплывает" на правильную позицию в конец массива. Затем, проходим по подмассиву без последнего элемента и повторяем этот процесс.  
Таким образом, на каждой итерации на правильную позицию всплывает один элемент, а общее количество итераций равно количеству элементов.  
После завершения сортировки, все элементы массива будут расположены в возрастающем порядке.

- Плюсы:  
1.Простота реализации - пузырьковая сортировка является одним из самых простых алгоритмов сортировки.  
2.Не требует дополнительной памяти - для сортировки массива не нужно выделять дополнительную память, что экономит ресурсы компьютера.  
3.Устойчивость - пузырьковая сортировка сохраняет порядок одинаковых элементов. Если два элемента равны, то они останутся в том же порядке после сортировки.
- Минусы:  
1.Медленная скорость работы - пузырьковая сортировка имеет квадратичную сложность времени (O(n^2)), что делает ее непрактичным для сортировки больших массивов данных.   
2.Неэффективность при частично отсортированных массивах - пузырьковая сортировка неэффективна при частично отсортированных массивах, так как она всегда проходит по всем элементам, даже если массив уже отсортирован.

- Визуализвция:  
  ![bubble sort](https://www.resultswebdev.com/wp-content/themes/results-website-design/uploads/bubble-sort-animation2.gif)
- Реализация: 
```cpp
void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        for (int j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                swap(arr[j], arr[j+1]);
            }
        }
    }
}
```

- Время работы:  
Лучшее:O(n)  
Среднее:O(n^2)  
Худщее:O(n^2)

### SelectionSort(Сортировка выбором):

- Принцип работы:  
Находим наименьший элемент в массиве и ставим его на первую позицию.  
Находим следующий наименьший элемент в оставшейся части массива и ставим его на вторую позицию.  
Продолжаем этот процесс до тех пор, пока все элементы не будут отсортированы.  
Принцип работы сортировки выбором заключается в том, что на каждом шаге мы выбираем наименьший элемент и помещаем его на нужное место. В конечном итоге, элементы будут располагаться в возрастающем порядке.

- Плюсы:  
1.Простая реализация - не требует сложных дополнительных структур данных или алгоритмов.  
2.Эффективность для небольших массивов - для массивов небольшого размера сортировка выбором может быть достаточно быстрой и эффективной.

- Минусы:  
1.Низкая эффективность для больших массивов - алгоритм имеет сложность O(n^2), поэтому его производительность снижается на больших объемах данных.  
2.Неустойчивость - сортировка выбором нарушает порядок элементов с одинаковыми значениями, то есть не является устойчивым алгоритмом сортировки.

- Визуализация:
 ![selection sort](https://www.datasciencecentral.com/wp-content/uploads/2021/10/1wgCuMnGOINT5NCbg90Sxsw-1.gif)
- Реализация:  
```cpp
void selectionSort(int arr[], int n) {
    for (int i = 0; i < n-1; i++) {
        int minIndex = i;
        for (int j = i+1; j < n; j++) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j;
            }
        }
        swap(arr[i], arr[minIndex]);
    }
}
```
- Время работы:    
Лучшее:O(n^2)   
Среднее:O(n^2)    
Худщее:O(n^2)

### InsertionSort(Сортировка вставкой):

- Принцип работы:  
Начинаем с первого элемента в массиве, который считается отсортированным.
Берем следующий элемент из неотсортированной части массива и вставляем его в правильное место в отсортированной части массива.
Повторяем шаг 2 для всех оставшихся элементов, пока не отсортируем весь массив.
- Плюсы:  
1.Простота реализации и понимания.  
2.Хорошо работает на небольших или почти отсортированных массивах.  
3.Работает в режиме "на месте" (без выделения дополнительной памяти).

- Минусы:  
1.Медленная скорость работы на больших массивах.  
2.Время выполнения зависит от порядка элементов в исходном массиве.  
3.Неэффективна при необходимости сортировки в режиме реального времени.

- Визуализвция: 
![insertion sort](https://img2020.cnblogs.com/blog/2324401/202103/2324401-20210310204308654-45619857.gif)
- Реализация:
```cpp
void insertionSort(int arr[], int n) {
    for (int i = 1; i < n; i++) {
        int key = arr[i];
        int j = i-1;
        while (j >= 0 && arr[j] > key) {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = key;
    }
}
```
- Время работы:  
Лучшее:O(n)   
Среднее:O(n^2)    
Худщее:O(n^2)

- Алгоритм сортировки вставкой является эффективным на практике для небольших массивов или частично отсортированных массивов. Он имеет временную сложность O(n^2), что делает его менее эффективным, чем некоторые другие алгоритмы сортировки.  
Однако, в отличие от пузырьковой и выборной сортировок, алгоритм сортировки вставкой обычно выполняет меньше операций обмена элементов при сортировке массива. Это означает, что на практике сортировка вставкой может работать быстрее, когда количество операций обмена является дорогостоящими (например, при сортировке объектов или элементов со сложной логикой обмена).  
В сравнении с подсчетной сортировкой, алгоритм сортировки вставкой обычно требует больше операций сравнения элементов. Подсчетная сортировка выполняет только операции сравнения и копирования, и ее временная сложность составляет O(n+k), где k - количество уникальных значений в массиве. Поэтому, если количество уникальных значений небольшое и доступна достаточно памяти, подсчетная сортировка может быть более эффективной вариантом сортировки.

### CountingSort(Сортировка подсчётом):

- Принцип работы:   
Создается вспомогательный массив (счетчик), в котором будет храниться информация о количестве каждого значения в исходном массиве.  
Проход по исходному массиву и увеличение значения счетчика для каждого элемента.  
Вычисление префиксной суммы во вспомогательном массиве. Это делается путем суммирования текущего значения с предыдущим.  
Создание нового массива с размером, равным размеру исходного массива, и заполнение его элементами в соответствии с информацией из вспомогательного массива.  
Возврат отсортированного массива.

- Плюсы:  
1.Простота реализации: алгоритм относительно легко понять и написать.  
2.Эффективность на небольших наборах данных: сортировка подсчетом хорошо справляется с небольшими наборами данных, особенно если они содержат ограниченный диапазон чисел.  
3.Работает с целыми числами: алгоритм подходит для сортировки целых чисел, так как использует массивы для счетчиков.

- Минусы:  
1.Ограниченное использование: сортировка подсчетом может быть неэффективной и непрактичной для больших наборов данных или наборов данных с большим диапазоном чисел.  
2.Дополнительное использование памяти: для выполнения сортировки подсчетом требуется выделение дополнительной памяти для массива счетчиков, который может быть затратным при работе с большими наборами данных.

- Визуализация: 
 ![counting sort](https://thedukh.com/wp-content/uploads/2021/02/countingsort.gif)
- Реализация:
```cpp
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
```
- Время работы:  
Лучшее:O(n + k)   
Среднее:O(n + k)    
Худщее:O(n)  
k - диапазон значений элементов
- Алгоритм сортировки подсчетом эффективен в случаях, когда:   
1. Диапазон сортируемых элементов относительно небольшой. Если числа находятся в пределах ограниченного диапазона, то алгоритм сортировки подсчетом может быть значительно эффективнее других алгоритмов, таких как сортировка слиянием или быстрая сортировка.  
2. Элементы, которые нужно отсортировать, имеют ограниченное количество возможных значений. Если количество уникальных значений ограничено, асимптотическая сложность сортировки подсчетом будет линейной, что делает ее эффективной.  
3. Числа, которые нужно отсортировать, имеют более высокую плотность распределения. Если числа входной последовательности равномерно распределены, то сортировка подсчетом становится эффективным методом сортировки.  
4. Нежелательно использовать сравнение элементов. В отличие от других алгоритмов сортировки, сортировка подсчетом не требует сравнений между элементами, что делает ее эффективной для сортировки специальных структур данных или пользовательских объектов, где не определено отношение порядка.

### RadixSort(Цифровыя сортировка):

- Принцип работы:  
Находим максимальное число в массиве, чтобы определить количество разрядов для сортировки  
Инициализируем вспомогательный массив, который будет использоваться для временного хранения чисел.  
Последовательно проходим по каждому разряду (начиная с наименее значащего) и выполняем следующие шаги: Инициализируем счетчик для каждой цифры (от 0 до 9). Увеличиваем соответствующий счетчик для каждого числа в массиве. Вычисляем сумму счетчиков для определения позиции чисел во вспомогательном массиве. Распределяем числа во вспомогательном массиве на основе счетчика. Копируем отсортированный вспомогательный массив обратно в исходный массив.  
Повторяем процесс для каждого разряда, пока не достигнем наиболее значащего разряда.

- Плюсы:  
1.Высокая эффективность: цифровая сортировка обладает высокой скоростью выполнения и может быть эффективно использована для сортировки больших объемов данных.  
2.Устойчивость: цифровая сортировка сохраняет относительный порядок элементов с одинаковым ключом, что позволяет использовать ее для сортировки данных, содержащих дубликаты.  
3.Простота реализации: алгоритм цифровой сортировки довольно прост для понимания и имеет небольшое количество шагов, что делает его привлекательным для разработчиков.

- Минусы:  
1.Зависимость от размера ключей: цифровая сортировка эффективна только при сортировке данных с ключами ограниченного размера. Если ключи имеют переменную длину или требуют сложных операций сравнения, то цифровая сортировка может быть менее эффективной.  
2.Дополнительное использование памяти: для выполнения цифровой сортировки может потребоваться выделение дополнительной памяти для хранения временных данных, что может привести к увеличению использования памяти программой.  
3.Ограничения на типы данных: цифровая сортировка может быть ограничена использованием только целочисленных типов данных или других ограниченных наборов значений. Это может быть проблемой при сортировке данных с плавающей запятой или текстовыми значениями.

- Визуализация:
![digital sort](https://assets.digitalocean.com/articles/alligator/js/radix-sort/radix-sort-animation-o.gif)
- Реализация:
```cpp
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
```
- Время работы:  
Лучшее:O(n + k)
Среднее:O(n + k)
Худщее:O(n + k)
k - диапазон значений элементов  

- Примеры применения цифровой сортировки:  
1.Сортировка списка номеров телефонов: цифровая сортировка может использоваться для сортировки списка номеров телефонов, чтобы получить их в порядке возрастания или упорядочить по коду страны/региона.  
2.Сортировка дат: цифровая сортировка может быть полезна для сортировки дат в формате ГГГГ-ММ-ДД или ММ-ДД-ГГГГ, чтобы получить их в хронологическом порядке.  
3.Сортировка строк: цифровая сортировка может быть применена для сортировки строк в алфавитном порядке. Например, можно отсортировать список имен людей в алфавитном порядке, используя цифровую сортировку по символам строки.

