public class Solution {
    public static void main(String[] args) {
        System.out.println(Solution.solution());
    }

    public static int solution() {
        int a = 2;
        int b = a;
        int c = 1;
        int n = 10;
        int k = n;
        while(k != 1) {
            if(k % 2 == 0) {
                k = k / 2;
                b = b * b;
            }
            else {
                k = k - 1;
                c = c * b;
            }
        }
        int result = b * c;
        return result;
    }
}
// a^(n) = {n=2*k} = a^(2*k)= {k=2*l} = a^(2*2*l) = {l=s+1} = a^(2*2*(s+1)) =
// = a^[(2*2*s)+(2*2)] = a^(2*2*s) * a^(2*2)
// Когда степень нечетная (когда вычитаем единицу), то мы умножаем на a в степени
// произведения двоек, которые накопились, когда мы делили четную степень на 2
// То есть n уменьшается и параллельно расписывается a^n
