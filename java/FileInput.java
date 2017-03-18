import java.nio.file.Paths;
import java.util.Scanner;

public class FileInput{
    public static void main(String[] args){
        try{
            Scanner in = new Scanner(Paths.get("test.in"), "utf-8");
            while(in.hasNext()){
                System.out.println(in.next());
                /*output
                first line!
                second line!
                ...
                */
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
