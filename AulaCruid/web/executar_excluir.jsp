<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ClienteDAO" %>
<%
try{
    ClienteDAO cld = new ClienteDAO();
    int codigo_usuario = Integer.parseInt(request.getParameter("codigo"));
    cld.excluir(codigo_usuario);
    out.print("<script>alert('Registro excluido');</script>");
    out.print("<script>window.location.href= 'index.jsp'</script>");
}catch(Exception erro){
    throw new RuntimeException("Erro 10: " + erro);
}
%>