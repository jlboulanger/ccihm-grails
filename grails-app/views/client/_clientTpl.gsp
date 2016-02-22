<div class="row">
    <div class="col-sm-6">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label for="lastName" >Last Name</label></div>
            <div class="col-sm-8"><g:textField name="lastName" value="${client?.lastName}" class="col-sm-10"/></div>
        </div>
        <p/>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label for="firstName">First Name</label></div>
            <div class="col-sm-8"><g:textField name="firstName" value="${client?.firstName}" class="col-sm-10"/></div>
        </div>
    </div>

    <div class="col-sm-6">
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label for="type">Type</label></div>
            <div class="col-sm-8"><g:textField name="type" value="${client?.type}" class="col-sm-8"/></div>
        </div>
        <p/>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-3"><label for="lockedBy">Locked by</label></div>
            <div class="col-sm-8"><g:textField name="lockedBy" value="${client?.lockedBy}" class="col-sm-8"/></div>
        </div>
    </div>
</div>