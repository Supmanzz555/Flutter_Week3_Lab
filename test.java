import java.util.Scanner;
class Main {
    public static void main(String[] args) {
       
        Scanner scan = new Scanner(System.in);
    
       int len = scan.nextInt();     
       String[] dic = new String[len];
       String[] ans = new String[10];
       for(int i = 0 ;i<len;i++){
           dic[i] = scan.next();
       }
       for(int i = 0 ;i<10;i++){
            ans[i] = scan.next();
       }
       
       for(int i = 0 ;i<10;i++){
            for(int j = 0 ;j<5;j++){
                if(ans[i].equals(dic[j])){
                    System.out.print("1");
                }else{
                    System.out.print("0");
                }
            }
       }
       
       
       
    }
}