<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executar_excluir.jsp" method="post"><!--post passa informação encapsulada-->
            <label>CODIGO</label>
            <input type="text" name="codigo" value="<%=request.getParameter("cogido")%>"/><br>             
            <label>NOME</label>
            <input type="text" name="nome"value="<%=request.getParameter("nome")%>"/><br> 
             <button type="submit">EXCLUIR</button>
        </form>
    </body>
</html>
