package dao;

import model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//aula 2
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Statement;

public class ClienteDAO {

    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();

    public ClienteDAO() {
        conn = new Conexao().getConexao();

    }

    //metodo inserir dados
    public void inserir(Cliente cliente) {
        String sql = "INSERT INTO usuario(nome_usuario,email_usuario,senha_usuario) VALUES (?,?,?)";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_usuario());
            stmt.setString(2, cliente.getEmail_usuario());
            stmt.setString(3, cliente.getSenha_usuario());
            stmt.execute();
            stmt.close();
        } catch (SQLException error) {
            throw new RuntimeException("Erro 2: " + error);
        }

    }

    //metodos de pesquisa
    public ArrayList<Cliente> ListarTodos() {
        String sql = "SELECT * FROM usuario";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setCodigo_usuario(rs.getInt("codido_usuario"));
                cliente.setNome_usuario(rs.getString("nome_usuario"));
                cliente.setEmail_usuario(rs.getString("email_usuario"));
                cliente.setSenha_usuario(rs.getString("senha_usuario"));
                lista.add(cliente);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro 4: " + erro);
        }
        return lista;
    }

    //metodos de pesquisa por nome
    public ArrayList<Cliente> ListarTodosNome(String valor) {
        String sql = "SELECT * FROM usuario WHERE nome_usuario LIKE '%" + valor + "%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.getCogigo_usuario(rs.getInt("codigo_usuario"));
                cliente.setNome_usuario(rs.getString("nome_usuario"));
                cliente.setEmail_usuario(rs.getString("email_usuario"));
                cliente.setSenha_usuario(rs.getString("senha_usuario"));
                lista.add(cliente);
            }

        } catch (Exception erro) {
            throw new RuntimeException("Erro 5: " + erro);
        }
        return lista;
    }

    //metodo de atualização
    public void atualizar(Cliente cliente) {
        String sql = "UPDATE usuario SET nome_usuario = ?, email_usuario = ?, senha_usuario = ? WHERE codigo_usuario = ?";
        try {
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cliente.getNome_usuario());
            stmt.setString(2, cliente.getEmail_usuario());
            stmt.setString(3, cliente.getSenha_usuario());
            stmt.setInt(4, cliente.getCodigo_usuario());
            stmt.execute();
            stmt.close();

        } catch (Exception erro) {
            throw new RuntimeException("Erro 7: " + erro);
        }

    }

    //metodo excluir
    public void excluir(int valor) {
        String sql = "DELETE FROM usuario WHERE codigo_usuario = " + valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            stmt.close();
        } catch (Exception erro) {
            throw new RuntimeException("Erro 8: " + erro);
        }
    }

}
