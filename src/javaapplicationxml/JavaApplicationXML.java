/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplicationxml;

import com.sun.org.apache.xerces.internal.parsers.DOMParser;

/**
 *
 * @author Zurab
 */
public class JavaApplicationXML {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        DOMParser dp = new DOMParser();
        try
        {
       dp.parse("file:///c:\\Users\\Zurab\\Documents\\NetBeansProjects\\JavaApplicationXML\\src\\XML\\Students.xml");
        org.w3c.dom.Document document= dp.getDocument();
        int n = document.getChildNodes().getLength();
        System.out.println(""+ n);
        }
        catch(Exception ex)
        {
            System.out.println("");
        }
    }
    
}
