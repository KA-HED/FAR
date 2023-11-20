package com.EIE.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "G_GRADE", schema = "GEST_REP")
public class Grade {

    @Id
    @Column(name = "GRADE_ID", nullable = false)
    private Integer gradeId;

    @Column(name = "LIB_GRADE")
    private String libGrade;

    @Column(name = "CLASSEMENT")
    private Integer classement;

    @Column(name = "CODE_B4")
    private String codeB4;

    @Column(name = "LIB_GRADE_COMPL")
    private String libGradeCompl;

    // Getters and setters for the fields (omitted for brevity)

    // You can also include constructors and additional methods as needed

    public Integer getGradeId() {
        return gradeId;
    }

    public void setGradeId(Integer gradeId) {
        this.gradeId = gradeId;
    }

    public String getLibGrade() {
        return libGrade;
    }

    public void setLibGrade(String libGrade) {
        this.libGrade = libGrade;
    }

    public Integer getClassement() {
        return classement;
    }

    public void setClassement(Integer classement) {
        this.classement = classement;
    }

    public String getCodeB4() {
        return codeB4;
    }

    public void setCodeB4(String codeB4) {
        this.codeB4 = codeB4;
    }

    public String getLibGradeCompl() {
        return libGradeCompl;
    }

    public void setLibGradeCompl(String libGradeCompl) {
        this.libGradeCompl = libGradeCompl;
    }
}
