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

                    <g:render template="/client/clientTpl" model="[client: client]"/>
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
