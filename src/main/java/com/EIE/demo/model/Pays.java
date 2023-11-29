package com.EIE.demo.model;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;

@Entity
@Table(name = "G_PAYS", schema = "GEST_REP")
public class Pays {

    // Constructors, getters, and setters
    private String value;
    @PersistenceConstructor
    public Pays(String value) {
        this.pyId =  Integer.valueOf(value);
    }
    public Pays() {}

    @Id
    @Column(name = "PY_ID", nullable = false)
    private Integer pyId;

    @Column(name = "NOM_PY", nullable = false)
    private String nomPays;

    @Column(name = "CODE_ECA")
    private String codeEca;

    @Column(name = "CODE_MUNIT")
    private String codeMunit;

    // Getters and setters for the fields (omitted for brevity)

    public Integer getPyId() {
        return pyId;
    }

    public void setPyId(Integer pyId) {
        this.pyId = pyId;
    }

    public String getNomPays() {
        return nomPays;
    }

    public void setNomPays(String nomPays) {
        this.nomPays = nomPays;
    }

    public String getCodeEca() {
        return codeEca;
    }

    public void setCodeEca(String codeEca) {
        this.codeEca = codeEca;
    }

    public String getCodeMunit() {
        return codeMunit;
    }

    public void setCodeMunit(String codeMunit) {
        this.codeMunit = codeMunit;
    }

    // You can also include constructors and additional methods as needed
}
