
<%@page import="org.omg.SendingContext.RunTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.ClienteDAO"%>
<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            <label>NOME</label>
            <input type="text" name="nome"/><br>
            <button type="submit">PESQUISAR</button>
        </form>
        <!tag jsp>
        <%
            String nome_cliente = request.getParameter("nome");
            try {
                //tabela html
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>CÓDIGO</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th>SENHA</th>");
                out.print("<th>EDITAR</th>");
                out.print("<th>EXCLUIR</th>");
                out.print("</tr>");
                ClienteDAO cli = new ClienteDAO();
                if (nome_cliente == "" || nome_cliente == null) {
                    ArrayList<Cliente> lista = cli.ListarTodos();
                    for (int i = 0; i < lista.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(i).getCogigo_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getNome_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getEmail_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getSenha_usuario() + "</td>");
                        //
                        out.print("<td><a href='alterar.jsp?codigo="
                                + lista.get(i).getCogigo_usuario()
                                + "&nome=" + lista.get(i).getNome_usuario()
                                + "&email=" + lista.get(i).getEmail_usuario()
                                + "&senha=" + lista.get(i).getSenha_usuario()
                                + "'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo=" + lista.get(i).getCogigo_usuario()
                                + "&nome=" + lista.get(i).getNome_usuario()
                                + "'>CLIQUE</a></td>");
                        out.print("<tr>");
                    }
                } else {
                    ArrayList<Cliente> lista = cli.ListarTodosNome(nome_cliente);
                    for (int i = 0; i < lista.size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + lista.get(i).getCogigo_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getNome_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getEmail_usuario() + "</td>");
                        out.print("<td>" + lista.get(i).getSenha_usuario() + "</td>");
                        out.print("<td><a href='alterar.jsp?codigo="
                                + lista.get(i).getCogigo_usuario()
                                + "&nome=" + lista.get(i).getNome_usuario()
                                + "&email=" + lista.get(i).getEmail_usuario()
                                + "&senha=" + lista.get(i).getSenha_usuario()
                                + "'>CLIQUE</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo=" + lista.get(i).getCogigo_usuario()
                                + "&nome=" + lista.get(i).getNome_usuario()
                                + "'>CLIQUE</a></td>");
                        out.print("<tr>");
                    }
                }
                out.print("</table>");
            } catch (Exception erro) {
                throw new RuntimeException("Erro 6:" + erro);
            }

        %>
    <a href="inserir.jsp">novo</a>
</body>
</html>
