<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%
    int numA = 1;
    int numB = 1;
    int count = 0;

%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Aplicação</title>
    </head>
    <body>
        <h1>Olá Mundo!!!</h1>
        <%
        
        do {
            if((count++) >= 2) {
                int result = numA + numB;
                numA = numB;
                numB = result;
            }
            out.print(numB);
            out.print("<br />");
        } while(count < 10);
        %>
    </body>
</html>