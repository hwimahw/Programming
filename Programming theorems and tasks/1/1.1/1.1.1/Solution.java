public class Solution {
    public static void main(String[] args)
    {
        int a = 5;
        int b = 6;
        int c;
        System.out.println(a + " " + b);

        c = a;
        a = b;
        b = c;
        System.out.println(a + " " + b);
    }
}