class GreatestCommonDivisor{
    public static void main(String[] args){
        int result1 = findGreatestCommonDivisor(625, 225);
        int result2 = findGreatestCommonDivisor2(625, 225);
        System.out.println(result1);
        System.out.println(result2);
    }

    public static int findGreatestCommonDivisor(int a, int b){
        if(a == 0){
            return b;
        }
        if(b == 0){
            return a;
        }
        int q;
        int r = b;
        while(r != 0){
            q = a / b;
            r = a % b;
            a = b;
            b = r;
        }
        return a;
    }

    public static int findGreatestCommonDivisor2(int a, int b){
        int k;
        if(a < b){
            k = a;
        }else{
            k = b;
        }
        while(!(a % k == 0 && b % k == 0)){
            k = k - 1;
        }
        return k;
    }
}
