<g:if test="${client?.contacts}">
    <div class="panel">
        <div class="panel-heading">Contacts linked to <i>${client?.lastName} ${client?.firstName}</i></div>
        <div class="row">
            <g:each in="${client?.contacts}" var="contact">
                <g:render template="/contact/contactTpl" model="[contact: contact, onlydisplay: onlydisplay]"/>
            </g:each>
        </div>
    </div>
</g:if>
<g:else>
    <div class="panel-default"><div class="row"><center>No contact linked to <i>${client?.lastName} ${client?.firstName}</i></center></div></div>
</g:else>