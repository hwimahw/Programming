class Fibbonacci{
    public static int[][] A = {{1, 1}, {1, 0}};
    public static int[][] C = {{1, 0}, {0, 1}};

    public static int[][] multiplyTwoMatrixes(int[][] A, int[][] B) {
        int[][] C = new int[2][2];
        C[0][0] = A[0][0] * B[0][0] + A[0][1] * B[1][0];
        C[0][1] = A[0][0] * B[0][1] + A[0][1] * B[1][1];
        C[1][0] = A[1][0] * B[0][0] + A[1][1] * B[1][0];
        C[1][1] = A[1][0] * B[0][1] + A[1][1] * B[1][1];
        return C;
    }

    public static int[] multiplyMatrixVector(int[][] A, int[] B) {
        int[] C = new int[2];
        C[0] = A[0][0] * B[0] + A[0][1] * B[1];
        C[1] = A[1][0] * B[0] + A[1][1] * B[1];
        return C;
    }

    public static void main(String[] args) {
        int[] result = fibonacci(6);
        System.out.println(result[0]);;
    }

    public static int[] fibonacci(int n){
        int[] fib = {0, 1};
        while(n != 0){
            if(n % 2 == 0){
                A = multiplyTwoMatrixes(A, A);
                n = n / 2;
            }else{
                C = multiplyTwoMatrixes(C, A);
                n = n - 1;
            }
        }
        return multiplyMatrixVector(C, fib);
    }
}
