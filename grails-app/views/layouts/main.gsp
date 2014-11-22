<html>
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="jquery" plugin="jquery"/>
    </head>
    <body>
        <div id="menu">
            <g:render template="/common/menu" />
        </div>
        <g:layoutBody />
        <div id="footer">
            <g:render template="/common/footer" />
        </div>
    </body>
</html>
