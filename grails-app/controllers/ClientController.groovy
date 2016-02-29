import org.springframework.beans.factory.annotation.Autowired
import org.springframework.util.StringUtils
import org.springframework.web.servlet.ModelAndView

/**
 * Created by jilbi on 11/7/15.
 */


class ClientController {
    //static scope = "session"
    ClientService clientService
    ContactService contactService

    def edit(String id) {
        [client : clientService.getClient(id)]
    }

    def newclient() {
        [client : clientService.getNewClient()]
    }

    def save() {
        Client c = new Client()
        if (!"0".equals(params.client_id) && StringUtils.hasLength(params.client_id)) {
            c.id = Integer.valueOf(params.client_id)
        } else {
            c.id = null
        }
        c.setLastName(params.lastName)
        c.setFirstName(params.firstName)
        c.setType(params.type)
        def res = clientService.saveClient(c)
        redirect(controller : 'client', action: 'edit' , id:res.id)
    }



    def newcontact() {
        [contact: contactService.getNewContact(), onlydisplay:false]
    }

    def deletecontact(String contact_id) {
        System.out.println("deleting contact " + contact_id + " for client " + params.id);
        System.out.println("contact service is : " + (contactService == null ? "null" : "autowired"));
        contactService.deleteContact(contact_id);
        redirect(controller : 'client', action: 'edit' , id:params.id)
    }
}
