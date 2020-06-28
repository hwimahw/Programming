public class Solution{

    public static double factorial(int n){
        if(n == 0 || n  == 1){
            return 1;
        }
        return n * factorial(n - 1);
    }

    public static double solution1(int n){
        double result = 0;
        for(int i = 0; i <= n; i++){
            result = result + 1/factorial(i);
        }
        return result;
    }
    public static double solution2(int n){
        double result = 0;
        double fact = 1;
        for(int i = 0; i <= n; i++){
            if(i != 0){
                fact = fact * i;
            }
            result = result + 1/fact;
        }
        return result;
    }


    public static void main(String[] args) {
        double result1 = solution1(3);
        System.out.println(result1);
        double result2 = solution2(3);
        System.out.println(result2);
    }
}
// В методе solution1 на каждой итерации i факториал вычисляется каждый раз ЗАНОВО!!!
// Посчитаем время работы метода.
// В методе solution1 на каждой итерации i выполняется одно присваивание(c) + вычисляется factorial(i);
// factorial(i) вычисляется за T(i):
// i = 0 T(0) = c
// i = 1 T(1) = c
// i = 2 T(2) = c + T(1) = c + c = 2*c;
// i = 3 T(3) = c + T(2) = c + c + T(1) = c + c + c = 3*c;
// ..........
// i = n T(n) = n*c;
// Итого: solution выполняется за c*(n+1) + c*(1+1+2+3+4+...+n) = c*(n+1) + c + c*n(n+1)/2 = O(n^2)
//--------------------------------------------------------------------------------------------------
// В методе solution2 теперь на каждой итерации i значение предыдущего факториала хранится в переменной fact
// Время работы solution2 = O(n)
