package pr;
class GreatestCommonDivisor2 {

    public static int solution(int a, int b){
        int m, n;
        m = a;
        n = b;
        int result;
        while(m != 0 && n != 0){
            if(m > n){
                m = m - n;
            }else{
                n = n - m;
            }
        }
        if(m == 0){
            result = n;
        }else{
            result = m;
        }
        return result;
    }

    public static void main(String[] args) {
        System.out.println(solution(100, 25));
    }
}