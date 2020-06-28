public class Solution {
    public static void main(String[] args) {
        int result = Solution.factorial(0);
        System.out.println(result);
    }

    public static int factorial1(int n) {
        if(n == 1 || n == 0){
            return 1;
        }
        return n * factorial(n - 1);

    }
    public static int factorial2(int n){
        int b = 1;
        for(int i = 1; i <= n; i++){
            b = b * i;
        }
        return b;
    }
}
