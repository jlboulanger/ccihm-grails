import org.springframework.http.HttpEntity
import org.springframework.http.HttpHeaders
import org.springframework.http.HttpMethod
import org.springframework.http.MediaType
import org.springframework.web.client.RestTemplate

/**
 * Created by jilbi on 2/29/16.
 */
class ContactService {

    private static final RestTemplate tpl = new RestTemplate()
    private static final def root_url = 'http://localhost:8080/callcenter/service/contact'

    public def getNewContact() {
        return new ContactInfos();
    }

    public def deleteContact(String id) {
        def  url = "${root_url}/{id}"
        def param = [id :id]
        tpl.delete(url, param)
    }
}
