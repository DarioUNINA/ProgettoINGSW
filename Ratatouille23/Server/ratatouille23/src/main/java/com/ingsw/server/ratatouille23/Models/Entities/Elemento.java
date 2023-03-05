package com.ingsw.server.ratatouille23.Models.Entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.annotations.OnDelete;
import java.util.List;

@Entity
@Table(name = "elemento")
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "idElemento")
public class Elemento {

    //Primary key
    @Id
    @Column(name = "id_Elemento")
    @SequenceGenerator(name = "id_elemento_seq", sequenceName = "id_elemento_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_elemento_seq")
    private int idElemento;

    //References
    @ManyToOne(fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonBackReference
    @JoinColumn(name = "id_categoria", referencedColumnName = "id_categoria")
    private Categoria categoria;

    @ManyToMany
    @JoinTable(name = "allergia",joinColumns = @JoinColumn(name = "id_elemento"), inverseJoinColumns = @JoinColumn(name = "allergene"))
    @JsonManagedReference
    private List<Allergene> allergeni;

    @ManyToMany
    @JoinTable(name = "ordinazione",joinColumns = @JoinColumn(name = "id_elemento"), inverseJoinColumns = @JoinColumn(name = "id_ordine"))
    @JsonManagedReference
    private List<Ordine> ordini;

    //Attributes
    @Column(name = "nome")
    private String nome;

    @Column(name = "descrizione")
    private String descrizione;

    @Column(name = "prezzo")
    private float prezzo;


    //Constructors
    public Elemento() {
    }

    public Elemento(int idElemento, Categoria categoria) {
        this.idElemento = idElemento;
        this.categoria = categoria;
    }

    public Elemento(int idElemento, Categoria categoria, String nome, float prezzo) {
        this.idElemento = idElemento;
        this.categoria = categoria;
        this.nome = nome;
        this.prezzo = prezzo;
    }
    
    public Elemento(int idElemento, Categoria categoria, String nome, float prezzo, List<Allergene> allergeni) {
        this.idElemento = idElemento;
        this.categoria = categoria;
        this.nome = nome;
        this.prezzo = prezzo;
        this.allergeni = allergeni;
    }

    public Elemento(int idElemento, Categoria categoria, String nome, String descrizione, float prezzo) {
        this.idElemento = idElemento;
        this.categoria = categoria;
        this.nome = nome;
        this.descrizione = descrizione;
        this.prezzo = prezzo;
    }

    //Getters and Setters
    public int getIdElemento() {
        return idElemento;
    }

    public void setIdElemento(int idElemento) {
        this.idElemento = idElemento;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }
    
    public List<Allergene> getAllergeni() {
        return allergeni;
    }

    public void setAllergeni(List<Allergene> allergeni) {
        this.allergeni = allergeni;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getDescrizione() {
        return descrizione;
    }

}
