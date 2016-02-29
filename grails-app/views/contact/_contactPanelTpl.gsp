<g:if test="${client?.contacts}">
    <div class="panel">
        <div class="panel-heading">Contacts linked to <i>${client?.lastName} ${client?.firstName}</i></div>
        <div class="row">
            <g:each in="${client?.contacts}" var="contact">
                <g:form id="${client?.id}">
                    <input type="hidden" value="${contact?.id}" name="contact_id"/>
                    <div class="col-md-4">
                        <fieldset class="form">
                            <g:render template="/contact/contactTpl" model="[contact: contact, onlydisplay: onlydisplay]"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                            <g:actionSubmit class="delete" action="deletecontact" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </div>
                </g:form>
            </g:each>
        </div>
    </div>
</g:if>
<g:else>
    <div class="panel-default"><div class="row"><center>No contact linked to <i>${client?.lastName} ${client?.firstName}</i></center></div></div>
</g:else>