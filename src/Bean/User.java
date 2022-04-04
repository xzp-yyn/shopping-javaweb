package Bean;

/**
 * @Author xuezhanpeng
 * @Date 2022/4/1 10:11
 * @Version 1.0
 */
public class User {
    private String name;
    private String password;
    private String phone;
    private String deposit;

    public User(String name, String password, String deposit) {
        this.name = name;
        this.password = password;
        this.deposit = deposit;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDeposit() {
        return deposit;
    }

    public void setDeposit(String deposit) {
        this.deposit = deposit;
    }
}
