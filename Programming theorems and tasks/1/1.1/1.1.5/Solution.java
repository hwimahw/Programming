public class Solution {
    public static void main(String[] args) {
        int result = Solution.firstSolution();
        System.out.println(result);
        result = Solution.secondSolution();
        System.out.println(result);

    }
    public static int firstSolution() {
        int a = 4;
        int b = 6;
        int result = 0;
        for(int i = 0; i < b; i++){
            for(int j = 0; j < a; j++) {
                result = result + 1;
            }
        }
        return result;
    }

    public static int secondSolution() {
        int a = 4;
        int b = 6;
        int result = 0;
        for(int i = 0; i < b; i++) {
            result = result + a;
        }
        return result;
    }
}