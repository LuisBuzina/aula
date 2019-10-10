package model;

public class Cliente {

    private int cogigo_usuario;
    private String nome_usuario;
    private String email_usuario;
    private String senha_usuario;

    public int getCogigo_usuario() {
        return cogigo_usuario;
    }

    public void setCogigo_usuario(int cogigo_usuario) {
        this.cogigo_usuario = cogigo_usuario;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getEmail_usuario() {
        return email_usuario;
    }

    public void setEmail_usuario(String email_usuario) {
        this.email_usuario = email_usuario;
    }

    public String getSenha_usuario() {
        return senha_usuario;
    }

    public void setSenha_usuario(String senha_usuario) {
        this.senha_usuario = senha_usuario;
    }

    public void getCogigo_usuario(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}
