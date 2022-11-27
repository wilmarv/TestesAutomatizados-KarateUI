package br.inatel.TesteAutomatizadoKarateUI.model;

import java.util.List;

public class Usuario {
	private Long id;
	private String nome;
	private String email;
	private String senha;
	private List<Endereco> enderecos;

	public Usuario() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}

	public Endereco getEnderecoPrincipal() {
		return enderecos.parallelStream().filter(endereco -> endereco.getTipo() == 0).findFirst().orElse(null);
	}
}
