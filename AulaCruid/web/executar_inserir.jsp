<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente" %>
<%@page import="dao.ClienteDAO" %>
<%
    try {
        Cliente cli = new Cliente();
        ClienteDAO cld = new ClienteDAO();
        String nome_usuario = request.getParameter("nome");
        String email_usuario = request.getParameter("email");
        String senha_usuario = request.getParameter("senha");

        if (nome_usuario.equals("") || email_usuario.equals("") || senha_usuario.equals("")) {
            out.print("<script>alert('teste')</script>");
            response.sendRedirect("inserir.jsp");
        } else {
            cli.setNome_usuario(nome_usuario);
            cli.setEmail_usuario(email_usuario);
            cli.setSenha_usuario(senha_usuario);
            cld.inserir(cli);
            out.print("<script>alert('Cadastro efetuado com sucesso!');</script>");
            out.print("<script>window.location.href='index.jsp'</script>");
        }
    } catch (Exception erro) {
        throw new RuntimeException("ERRO 3:" + erro);
    }
%>