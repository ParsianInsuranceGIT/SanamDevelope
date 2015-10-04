package com.bitarts.parsian.viewModel;

import java.io.IOException;
import java.text.NumberFormat;
import java.lang.Long;
import java.util.Properties;
import java.lang.String;

/**
 * Created with IntelliJ IDEA.
 * User: s-tayebifar
 * Date: 9/20/15
 * Time: 11:40 AM
 * To change this template use File | Settings | File Templates.
 */
public class Motalebat {
    private  String createDate ;
    private  String namayande ;
    private  String name ;
    private  int    reshte ;
    private  String reshteStr ;
    private  Long   mablaghSaderShode ;
    private  Long   mablaghSarresidNaShode ;
    private  Long   mablaghConsortiumsarresid_nashode ;
    private  Long   mablaghTasvieNashode ;
    private  Long   mablaghconsortiumNahaii ;
    private  Long   mablaghTasvieShode ;


    public Motalebat(String createDate, String namayande, String name, int reshte, String reshteStr, Long mablaghSaderShode, Long mablaghSarresidNaShode, Long mablaghConsortiumsarresid_nashode, Long mablaghTasvieNashode, Long mablaghconsortiumNahaii, Long mablaghTasvieShode) {
        this.createDate = createDate;
        this.namayande = namayande;
        this.name = name;
        this.reshte = reshte;
        this.reshteStr = reshteStr;
        this.mablaghSaderShode = mablaghSaderShode;
        this.mablaghSarresidNaShode = mablaghSarresidNaShode;
        this.mablaghConsortiumsarresid_nashode = mablaghConsortiumsarresid_nashode;
        this.mablaghTasvieNashode = mablaghTasvieNashode;
        this.mablaghconsortiumNahaii = mablaghconsortiumNahaii;
        this.mablaghTasvieShode = mablaghTasvieShode;
    }

    public Motalebat() {
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getNamayande() {
        return namayande;
    }

    public void setNamayande(String namayande) {
        this.namayande = namayande;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReshte() {
        return reshte;
    }

    public void setReshte(int reshte) {
        this.reshte = reshte;
    }

    public String getReshteStr() {
        return reshteStr;
    }

    public void setReshteStr(String reshteStr) {
        this.reshteStr = reshteStr;
    }

    public Long getMablaghSaderShode() {
        return mablaghSaderShode;
    }

    public void setMablaghSaderShode(Long mablaghSaderShode) {
        this.mablaghSaderShode = mablaghSaderShode;
    }

    public Long getMablaghSarresidNaShode() {
        return mablaghSarresidNaShode;
    }

    public void setMablaghSarresidNaShode(Long mablaghSarresidNaShode) {
        this.mablaghSarresidNaShode = mablaghSarresidNaShode;
    }

    public Long getMablaghConsortiumsarresid_nashode() {
        return mablaghConsortiumsarresid_nashode;
    }

    public void setMablaghConsortiumsarresid_nashode(Long mablaghConsortiumsarresid_nashode) {
        this.mablaghConsortiumsarresid_nashode = mablaghConsortiumsarresid_nashode;
    }

    public Long getMablaghTasvieNashode() {
        return mablaghTasvieNashode;
    }

    public void setMablaghTasvieNashode(Long mablaghTasvieNashode) {
        this.mablaghTasvieNashode = mablaghTasvieNashode;
    }

    public Long getMablaghconsortiumNahaii() {
        return mablaghconsortiumNahaii;
    }

    public void setMablaghconsortiumNahaii(Long mablaghconsortiumNahaii) {
        this.mablaghconsortiumNahaii = mablaghconsortiumNahaii;
    }

    public Long getMablaghTasvieShode() {
        return mablaghTasvieShode;
    }

    public void setMablaghTasvieShode(Long mablaghTasvieShode) {
        this.mablaghTasvieShode = mablaghTasvieShode;
    }
}
