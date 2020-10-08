public class Factorial {

    public static int factorial(int n){
        if(n == 1 || n == 0){
            return 1;
        }
        return n * factorial(n - 1);

    }

    public static double factorial2(int n){
        int result = 1;
        if(n == 0){
            return 1;
        }
       for(int i = 1; i <= n; i++){
           result = result * i;
       }
       return result;
    }

    public static void main(String[] args) {
        int result = factorial(3);
        System.out.println(result);
    }
}
