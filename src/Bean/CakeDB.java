package Bean;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 10:15
 * @Version 1.0
 */
public class CakeDB {
    private static Map<String,Cake> cake=new LinkedHashMap<>();
    static {
        cake.put("1",new Cake("1","南瓜蛋糕",45));
        cake.put("2",new Cake("2","吐司面包",38));
        cake.put("3",new Cake("3","港荣蒸蛋糕",18.8));
        cake.put("4",new Cake("4","寿司蛋糕",50));
        cake.put("5",new Cake("5","乳酸菌蛋糕",24.9));
        cake.put("6",new Cake("6","蜂蜜蛋糕",32.9));
        cake.put("7",new Cake("7","奶油芝士蛋糕",29.9));
        cake.put("8",new Cake("8","水果生日蛋糕",68));
        cake.put("9",new Cake("9","肉松蛋糕",19.8));
        cake.put("10",new Cake("10","提拉米苏蛋糕",10.5));
    }
    public static Collection<Cake> getall(){
        return cake.values();
    }
    public static Cake getcakebyid(String id){
        return cake.get(id);
    }
    public static double getpricebyid(String id){
        return cake.get(id).getPrice();
    }
}
