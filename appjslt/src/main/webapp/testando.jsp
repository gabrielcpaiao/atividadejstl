<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="jakarta.tags.core" prefix="core" %>
<%
    int[] valores = new int[100];
    for(int num = 1;  num < 101; num++) {
        valores[num-1] = num;
    }
    request.setAttribute("numeros", valores);
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
        <core:forEach var="item" items="${numeros}">
            <core:if test="${item % 2 != 0}">
                ${item} <br />
            </core:if>
        </core:forEach>
    </body>
</html>