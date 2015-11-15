<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Details Client</title>

</head>
<body>

        <div class="panel-body">
            <div class="panel panel-default">
                <div class="panel-heading">Edit client</div>
                <p/>
                <g:form name="edit_client" url="[action:'save', controller:'client']" id="${client?.id}" class="form-horizontal">

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
                    <p/>
                    <div class="col-md-2">
                        <g:actionSubmit value="Save" action="save" class="btn btn-lg btn-link" />
                    </div>
                    <input type="hidden" value="${client?.id}" name="client_id"/>
                </g:form>
            </div>
        </div>

</body>
</html>
