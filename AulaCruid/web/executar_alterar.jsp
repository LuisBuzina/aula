<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="dao.ClienteDAO"%>
<%
    try {
        Cliente cli = new Cliente();
        ClienteDAO cld = new ClienteDAO();

        String nome_usuario = request.getParameter("nome");
        String email_usuario = request.getParameter("email");
        String senha_usuario = request.getParameter("senha");
        int codigo_usuario = Integer.parseInt(request.getParameter("codigo"));

        if (nome_usuario.equals("") || email_usuario.equals("") || senha_usuario.equals("")) {
            response.sendRedirect("index.jsp");
        }else{
            cli.setNome_usuario(nome_usuario);
            cli.setEmail_usuario(email_usuario);
            cli.setSenha_usuario(senha_usuario);
            cli.setCogigo_usuario(codigo_usuario);
            cld.atualizar(cli);
            out.print("<script>alert('Atualizado com sucesso');</script>");
            out.print("<script>window.location.href= 'index.jsp'</script>");
        }
    } catch (Exception erro) {
        throw new RuntimeException("Erro 9: " + erro);
    }
%>