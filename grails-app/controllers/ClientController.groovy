import org.springframework.web.servlet.ModelAndView

/**
 * Created by jilbi on 11/7/15.
 */


class ClientController {
    //static scope = "session"
    ClientService clientService

    def view(String id) {
        [client : clientService.getClient(id)]

    }

    def save() {
        Client c = new Client()
        //TODO find better way !
        c.setId(Integer.valueOf(params.client_id))
        c.setLastName(params.lastName)
        c.setFirstName(params.firstName)
        c.setType(params.type)
        def res = clientService.updateClient(c)
        redirect(controller : 'client', action: 'view' , id:res.id)
        return
    }
}
