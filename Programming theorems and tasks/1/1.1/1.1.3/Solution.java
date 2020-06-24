public class Solution {
    public static void main(String[] args) {
        System.out.println(Solution.forSolution());
        System.out.println(Solution.whileSolution());
    }

    public static int forSolution() {
        int a = 2;
        int n = 10;
        int result = 1;
        for(int i = 0; i < n; i++) {
            result = result * a;
        }

        return result;
    }

    public static int whileSolution() {
        int a = 2;
        int n = 10;
        int result = 1;
        int k = 0;
        while(k < n) {
            result = result * a;
            k++;
        }
        return result;
    }
}