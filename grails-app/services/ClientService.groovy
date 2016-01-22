import org.springframework.http.HttpHeaders
import org.springframework.http.MediaType
import org.springframework.http.client.SimpleClientHttpRequestFactory
import org.springframework.http.converter.HttpMessageConverter
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter
import org.springframework.util.MultiValueMap
import org.springframework.http.HttpEntity
import org.springframework.http.HttpMethod
import org.springframework.web.client.RestTemplate

/**
 * Created by jilbi on 11/7/15.
 */
class ClientService {

    private static final RestTemplate tpl = new RestTemplate()
    private static final def root_url = 'http://localhost:8080/callcenter/service/client'

    public def  getClient(String id) {
        def  url = "${root_url}/{id}"
        def param = [id :id]
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.setContentType(MediaType.APPLICATION_JSON)
        HttpEntity<?> requestEntity = new HttpEntity<Object>(requestHeaders);

        def response = tpl.exchange(url, HttpMethod.GET, requestEntity, Client.class, param)
        if (response.statusCode.value() == 200) {
            return response.body
        } else  {//TODO handle errors
            return new Client()
        }
    }

    public def getNewClient() {
        return new Client()
    }


    public def saveClient(Client c) {
        def  url = "${root_url}/save"
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.setContentType(MediaType.APPLICATION_JSON)
        requestHeaders.setAccept([MediaType.APPLICATION_JSON])
        HttpEntity<Client> requestEntity = new HttpEntity<Client>(c, requestHeaders);
        List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
        messageConverters.add(new MappingJackson2HttpMessageConverter());
        tpl.setMessageConverters(messageConverters)

//TODO handle response better when error
        def response = tpl.exchange(url,  HttpMethod.POST, requestEntity, Client.class)
        if (response.statusCode.value() == 200) {
            return response.body
        } else  {//TODO
            return new Client()
        }
    }
}
