<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="executar_alterar.jsp" method="post"><!--post passa informação encapsulada-->
            <label>CODIGO</label>
            <input type="text" name="codigo" value="<%=request.getParameter("codigo")%>"/><br>             
            <label>NOME</label>
            <input type="text" name="nome"value="<%=request.getParameter("nome")%>"/><br>  
            <label>EMAIL</label>
            <input type="text" name="email"value="<%=request.getParameter("email")%>"/><br>  
            <label>SENHA</label>
            <input type="text" name="senha"value="<%=request.getParameter("senha")%>"/><br>      
            <button type="submit">Atualizar</button>
        </form>
    </body>
</html>
