public class Solution {
    public static void main(String[] args) {
        Solution.firstSolution();
        Solution.secondSolution();
    }

    public static void firstSolution() {
        int a = 29;
        int d = 5;
        int q = 0; // q - частное
        int r = 0; // остаток
        int quantityOfDinA = 0; // сколько раз d содержится в a
        while(true) {
            q = q + d;
            if(q <= a) {
                quantityOfDinA++;
                continue;
            }
            break;
        }
        q = quantityOfDinA;
        r = a - q*d;
        System.out.println("q = " + q + ";" + "r = " + r);
    }

    public static void secondSolution(){
        int a = 29;
        int d = 5;
        int r = a; // r - остаток
        int q = 0;
        int quantityOfDinA = 0;  // частное
        while(r >= d) {
            r = r - d;
            quantityOfDinA++;
        }
        q = quantityOfDinA;
        System.out.println("q = " + q + ";" + "r = " + r);
    }
}