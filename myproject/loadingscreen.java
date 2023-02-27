/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.myproject;

/**
 *
 * @author user
 */
public class loadingscreen {
    public static void main(String[] args) {
          loading a = new loading();
        a.setVisible(true);

        try {
            for (int i = 0; i <= 100; i++) {
                Thread.sleep(10);
                a.jLabel2.setText(Integer.toString(i) + "%");
                a.jProgressBar1.setValue(i);

                if (i == 100) {
                    a.dispose();
                 
                }
            }

        } catch (Exception e) {
            System.out.println(e);
        }
         Login b = new Login();
                    b.setVisible(true);
    }
}
