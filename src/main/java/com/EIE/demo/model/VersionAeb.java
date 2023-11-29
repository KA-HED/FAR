package com.EIE.demo.model;
import org.springframework.data.annotation.PersistenceConstructor;

import javax.persistence.*;

@Entity
@Table(name = "VERSION_AEB", schema = "AEB")
public class VersionAeb {

    // Constructors, getters, and setters
    private String value;

    @PersistenceConstructor
    public VersionAeb(String value) {
        this.versionId =  Long.parseLong(value);
    }
    public VersionAeb() {
        // Constructeur par défaut (sans paramètres)
    }
    @Id
    @Column(name = "VERSION_ID", nullable = false)
    private Long versionId;

    @Column(name = "TYPE_ID", nullable = false)
    private Long typeId;

    @Column(name = "DESIG_VERSION", nullable = false)
    private String desigVersion;

    @Column(name = "ABR_VERSION", nullable = false)
    private String abrVersion;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed*

    public Long getVersionId() {
        return versionId;
    }

    public void setVersionId(Long versionId) {
        this.versionId = versionId;
    }

    public Long getTypeId() {
        return typeId;
    }

    public void setTypeId(Long typeId) {
        this.typeId = typeId;
    }

    public String getDesigVersion() {
        return desigVersion;
    }

    public void setDesigVersion(String desigVersion) {
        this.desigVersion = desigVersion;
    }

    public String getAbrVersion() {
        return abrVersion;
    }

    public void setAbrVersion(String abrVersion) {
        this.abrVersion = abrVersion;
    }
}
