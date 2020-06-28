public class Solution {
    public static void main(String[] args) {
        int result = Solution.fibonacci(20);
        System.out.println(result);
    }

    public static int fibonacci(int n){
        if(n == 1 || n == 0) {
            return 1;
        }
        return fibonacci(n - 1) + fibonacci(n - 2);
    }

    public static int fibonacci(int n){
        int a = 0;
        int b = 1;
        int c;
        for(int i = 0; i < n; i++){
            c = a;
            a = b;
            b = c + b;
        }
        return a;
    }
}
