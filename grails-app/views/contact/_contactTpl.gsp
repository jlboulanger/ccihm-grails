
<div class="col-md-4">

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="address1" >Adresse</label></div>
        <div class="col-md-8"><g:textField name="address1" value="${contact?.address1}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="address2" >Complement</label></div>
        <div class="col-md-8"><g:textField name="address2" value="${contact?.address2}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="city" >City</label></div>
        <div class="col-md-8"><g:textField name="city" value="${contact?.city}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="code" >Code</label></div>
        <div class="col-md-8"><g:textField name="code" value="${contact?.code}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="country" >Country</label></div>
        <div class="col-md-8"><g:textField name="country" value="${contact?.country}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="phone" >Phone</label></div>
        <div class="col-md-8"><g:textField name="phone" value="${contact?.phone}" readonly="${onlydisplay}" class="col-sm-12"/></div>
    </div>
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-3"><label for="createDt" >Country</label></div>
        <div class="col-md-8"><g:formatDate name="createDt" date="${contact?.createDt}" type="date" style="LONG" readonly="true" class="col-sm-12"/></div>
    </div>
    <p/>
</div>
