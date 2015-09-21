package com.bitarts.parsian.model.asnadeSodor;

/**
 * Created with IntelliJ IDEA.
 * User: s-tayebifar
 * Date: 9/20/15
 * Time: 11:40 AM
 * To change this template use File | Settings | File Templates.
 */
public class Motalebat {
    private  String createDate ;
    private  String Namayande ;
    private  String Name ;
    private  int    Reshte ;
    private  String ReshteStr ;
    private  Long   MablaghSaderShode ;
    private  Long   MablaghSarresidNaShode ;
    private  Long   MablaghConsortiumsarresid_nashode ;
    private  Long   MablaghTasvieNashode ;
    private  Long   MablaghconsortiumNahaii ;
    private  Long   MablaghTasvieShode ;

    public Motalebat(String createDate, String namayande, String name, int reshte, String reshteStr, Long mablaghSaderShode, Long mablaghSarresidNaShode,
                     Long mablaghConsortiumsarresid_nashode, Long mablaghTasvieNashode, Long mablaghconsortiumNahaii, Long mablaghTasvieShode) {
        this.createDate = createDate;
        Namayande = namayande;
        Name = name;
        Reshte = reshte;
        ReshteStr = reshteStr;
        MablaghSaderShode = mablaghSaderShode;
        MablaghSarresidNaShode = mablaghSarresidNaShode;
        MablaghConsortiumsarresid_nashode = mablaghConsortiumsarresid_nashode;
        MablaghTasvieNashode = mablaghTasvieNashode;
        MablaghconsortiumNahaii = mablaghconsortiumNahaii;
        MablaghTasvieShode = mablaghTasvieShode;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getNamayande() {
        return Namayande;
    }

    public void setNamayande(String namayande) {
        Namayande = namayande;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getReshte() {
        return Reshte;
    }

    public void setReshte(int reshte) {
        Reshte = reshte;
    }

    public String getReshteStr() {
        return ReshteStr;
    }

    public void setReshteStr(String reshteStr) {
        ReshteStr = reshteStr;
    }

    public Long getMablaghSaderShode() {
        return MablaghSaderShode;
    }

    public void setMablaghSaderShode(Long mablaghSaderShode) {
        MablaghSaderShode = mablaghSaderShode;
    }

    public Long getMablaghSarresidNaShode() {
        return MablaghSarresidNaShode;
    }

    public void setMablaghSarresidNaShode(Long mablaghSarresidNaShode) {
        MablaghSarresidNaShode = mablaghSarresidNaShode;
    }

    public Long getMablaghConsortiumsarresid_nashode() {
        return MablaghConsortiumsarresid_nashode;
    }

    public void setMablaghConsortiumsarresid_nashode(Long mablaghConsortiumsarresid_nashode) {
        MablaghConsortiumsarresid_nashode = mablaghConsortiumsarresid_nashode;
    }

    public Long getMablaghTasvieNashode() {
        return MablaghTasvieNashode;
    }

    public void setMablaghTasvieNashode(Long mablaghTasvieNashode) {
        MablaghTasvieNashode = mablaghTasvieNashode;
    }

    public Long getMablaghconsortiumNahaii() {
        return MablaghconsortiumNahaii;
    }

    public void setMablaghconsortiumNahaii(Long mablaghconsortiumNahaii) {
        MablaghconsortiumNahaii = mablaghconsortiumNahaii;
    }

    public Long getMablaghTasvieShode() {
        return MablaghTasvieShode;
    }

    public void setMablaghTasvieShode(Long mablaghTasvieShode) {
        MablaghTasvieShode = mablaghTasvieShode;
    }
}
