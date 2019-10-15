#include <stdio.h>
#include <math.h>

int main() {
    FILE *fin = fopen("input.txt", "r");
    FILE *fout = fopen("output.txt", "w");

    float columns = 0, strings = 0, cell_color = 0;
    fscanf(fin, "%f%f%f", &columns, &strings, &cell_color);

    float a = 0;

    float amount_patterns = 0;
    if (strings >= 5 && columns >= 2) {

        if (strings < columns && strings < 5) {//меняем местами строки истолбцы если они не меньше шаблона
            a = strings;
            strings = columns;
            columns = a;
        }

        //здесь происходит нахождение дополнительных клеток в строке удовлетворяющих шаблону, например если
        // у нас входные  данные: 8 8 1, то алгоритм выведет 1, т.к. в шаблоне у нас 3 черные идут в 1 строке в шаблоне,
        // а добавляется 1 по входным данным
        //вид самой шахмотной доски:
        //        10101010  - 4 черные( 3 из шаблона + 1 новая)
        //        01010101
        //        10101010
        //        01010101
        //        10101010
        //        01010101
        //        10101010
        //        01010101
        float answer = 0;
        if ((int) strings % 2 == 0) {
            //amount_patterns считает сколько дополнительных черных клеток присутсвует в 1 строке шахматной доски
            //это формула работает если у нас столбцов четное колличество или белая ячейка.
            // т.к. при четном колличесве белых и черных клеток равное колличество и нам без разницы
            amount_patterns = strings - (strings / 2) - 3;

            //(columns - 1) - колличесво строк в которых может быть шаблон доски, "-1" т.к. в последней строке никогда
            //не будет шаблон, т.к шаблон состоит из 2 строк, если бы шаблон был из 3 строк то вычитали бы "-2"
            //(amount_patterns + 1) - колличесво паттернов шахмотной доски в строке, "+1" для ясного моего понимания
            //работы формулы, т.к. можно было - бы прибавить сразу в amount_patterns. "+1" - минимальное колличесво
            //шаблонов
            answer = (columns - 1) * (amount_patterns + 1);
            fprintf(fout, "%d", (int) answer);
            return 0;

        } else if (cell_color == 0) {
            //формула для нахождения патернов в строке при условии что 1 клетка белая
            //"-2" - это мы вычитаем колличесво белых в патерне
            amount_patterns = floorf(strings - (strings / 2) - 2);
            //формула для нахождения патернов в строке при условии что 1 клетка черная
            //"-3" - это мы вычитаем колличесво черных клеток в патерне
        } else amount_patterns = floorf(strings - (strings / 2) - 3);

        float g = 0, f = 0;
        //g - это колличесво нечетных строк
        //f - это оставшееся колличесво строк(четные строки)
        //(amount_patterns + 1) или (amount_patterns + 1) - кооличесво паттернов в 1 строке

        g = ceilf(columns / 2);
        f = columns - g;
        g--;// вычитаем т.к. в последней строке не будет шаблон полностью удовлетворен требованиям
        if (cell_color == 0) {
            //"-g" - колличество лишних шаблонов в четных строках, т.к. мы считаем что там столько же сколь и в нечетных
            answer = g * (amount_patterns + 1) + f * (amount_patterns + 1)-g;
        } else {

            answer = g * (amount_patterns + 1) + f * (amount_patterns + 2);
        }

        fprintf(fout, "%d", (int) answer);

    } else fprintf(fout, "NO");
    return 0;
}