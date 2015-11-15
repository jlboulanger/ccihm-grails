/**
 * Created by jilbi on 11/7/15.
 */
import grails.rest.*


class Client {

    private int id
    private String lastName
    private String firstName
    private String type
    private Date createDt
    private Date updateDt
    private String lockedBy

    public int getId() {
        return id
    }

    public void setId(int id) {
        this.id = id
    }

    public String getLastName() {
        return lastName
    }

    public void setLastName(String lastName) {
        this.lastName = lastName
    }

    public String getFirstName() {
        return firstName
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName
    }

    public String getType() {
        return type
    }

    public void setType(String type) {
        this.type = type
    }

    public Date getCreateDt() {
        return createDt
    }

    public void setCreateDt(Date createDt) {
        this.createDt = createDt
    }

    public Date getUpdateDt() {
        return updateDt
    }

    public void setUpdateDt(Date updateDt) {
        this.updateDt = updateDt
    }

    public String getLockedBy() {
        return lockedBy
    }

    public void setLockedBy(String lockedBy) {
        this.lockedBy = lockedBy
    }
}
