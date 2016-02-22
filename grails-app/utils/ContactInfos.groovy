import com.fasterxml.jackson.databind.annotation.JsonSerialize

/**
 * Created by jilbi on 2/20/16.
 */
@JsonSerialize(include=JsonSerialize.Inclusion.NON_NULL)
class ContactInfos {
    private Integer id;
    private String address1;
    private String address2;
    private String city;
    private String country;
    private String code;
    private String phone;
    private Date createDt;
    private Date updateDt;

    Integer getId() {
        return id
    }

    void setId(Integer id) {
        this.id = id
    }

    String getAddress1() {
        return address1
    }

    void setAddress1(String address1) {
        this.address1 = address1
    }

    String getAddress2() {
        return address2
    }

    void setAddress2(String address2) {
        this.address2 = address2
    }

    String getCity() {
        return city
    }

    void setCity(String city) {
        this.city = city
    }

    String getCountry() {
        return country
    }

    void setCountry(String country) {
        this.country = country
    }

    String getCode() {
        return code
    }

    void setCode(String code) {
        this.code = code
    }

    String getPhone() {
        return phone
    }

    void setPhone(String phone) {
        this.phone = phone
    }

    Date getCreateDt() {
        return createDt
    }

    void setCreateDt(Date createDt) {
        this.createDt = createDt
    }

    Date getUpdateDt() {
        return updateDt
    }

    void setUpdateDt(Date updateDt) {
        this.updateDt = updateDt
    }

    @Override
    public String toString() {
        return "ContactInfos{" +
                "id=" + id +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", code='" + code + '\'' +
                ", phone='" + phone + '\'' +
                ", createDt=" + createDt +
                ", updateDt=" + updateDt +
                '}';
    }
}
