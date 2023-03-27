/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package medicinskicentar;


public class Pacijent {
    private int JMBG;
    private int PIB;
    private String IME_PACIJENTA;
    private String TELEFON_PACIJENTA;

    public Pacijent(int JMBG, int PIB, String IME_PACIJENTA, String TELEFON_PACIJENTA) {
        this.JMBG = JMBG;
        this.PIB = PIB;
        this.IME_PACIJENTA = IME_PACIJENTA;
        this.TELEFON_PACIJENTA = TELEFON_PACIJENTA;
    }

    public int getJMBG() {
        return JMBG;
    }

    public void setJMBG(int JMBG) {
        this.JMBG = JMBG;
    }

    public int getPIB() {
        return PIB;
    }

    public void setPIB(int PIB) {
        this.PIB = PIB;
    }

    public String getIME_PACIJENTA() {
        return IME_PACIJENTA;
    }

    public void setIME_PACIJENTA(String IME_PACIJENTA) {
        this.IME_PACIJENTA = IME_PACIJENTA;
    }

    public String getTELEFON_PACIJENTA() {
        return TELEFON_PACIJENTA;
    }

    public void setTELEFON_PACIJENTA(String TELEFON_PACIJENTA) {
        this.TELEFON_PACIJENTA = TELEFON_PACIJENTA;
    }

    @Override
    public String toString() {
        return "Pacijent{" + "JMBG=" + JMBG + ", PIB=" + PIB + ", IME_PACIJENTA=" + IME_PACIJENTA + ", TELEFON_PACIJENTA=" + TELEFON_PACIJENTA + '}';
    }
    
    
}
