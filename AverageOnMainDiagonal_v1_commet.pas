﻿program AverageOnMainDiagonal;
var
  matrix: array [1..100, 1..100] of real;  // Оголошуємо двовимірний масив для зберігання елементів матриці
  n, i, j: integer;  // Оголошуємо змінні для розміру матриці та індексів циклів
  sum, average: real;  // Оголошуємо змінні для суми елементів діагоналі та середнього значення
begin
  writeln('Enter the size of the square matrix (n):');  // Виводимо запит на введення розміру матриці
  readln(n);  // Читаємо розмір матриці (n)
  
  writeln('Enter the elements of the matrix:');  // Виводимо запит на введення елементів матриці
  for i := 1 to n do  // Цикл для введення елементів матриці по рядках
    for j := 1 to n do  // Цикл для введення елементів матриці по стовпцях
      read(matrix[i, j]);  // Читаємо елемент матриці для кожної позиції
  
  sum := 0;  // Ініціалізуємо суму елементів головної діагоналі як 0
  
  for i := 1 to n do  // Цикл для проходження по головній діагоналі
    sum := sum + matrix[i, i];  // Додаємо елемент головної діагоналі (матриця[i, i]) до суми
  
  average := sum / n;  // Обчислюємо середнє значення елементів головної діагоналі
  
  writeln('The average of the main diagonal elements is: ', average:0:2);  // Виводимо результат з точністю до 2 знаків після коми
end.
