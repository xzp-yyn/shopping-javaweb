package Bean;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 10:13
 * @Version 1.0
 */
public class Cake {
    private String id;
    private String name;
    private Double price;
    private String  icon;

    public Cake(String id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Cake(){
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }
}
