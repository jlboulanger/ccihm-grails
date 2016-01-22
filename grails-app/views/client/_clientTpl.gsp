<div class="row">
    <div class="col-md-3"><label for="lastName" >Last Name</label></div>
    <div class="col-md-3"><g:textField name="lastName" value="${client?.lastName}"/></div>
    <div class="col-md-3"><label for="firstName">First Name</label></div>
    <div class="col-md-3"><g:textField name="firstName" value="${client?.firstName}"/></div>
</div>
<p/>
<div class="row">
    <div class="col-md-3"><label for="type">Type</label></div>
    <div class="col-md-3"><g:textField name="type" value="${client?.type}"/></div>
    <div class="col-md-3"><label for="lockedBy">Locked by</label></div>
    <div class="col-md-3"><g:textField name="lockedBy" value="${client?.lockedBy}"/></div>
</div>