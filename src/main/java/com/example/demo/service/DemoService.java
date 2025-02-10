package com.example.demo.service;


import org.springframework.stereotype.Service;

@Service
public class DemoService {

    private String savedString = "";
    public String encrypt(String text, int key){
        char[] encryptedString = new char[text.length()];
        for (int i = 0; i < text.length(); i++){
            char c = text.charAt(i);
            int n = (int) c + key;

            if (c < 90 && n > 90 ){
                n = 65 + n-91;
            }
            else if (c > 90 && n > 122){
                n = 97 + n-123;
            }
            encryptedString[i] = (char) n;

        }
        savedString = new String(encryptedString);
        return savedString;
    }

    public String decrypt(int key){
        char[] decryptedString = new char[savedString.length()];
        for (int i = 0; i < savedString.length(); i++){
            char c = savedString.charAt(i);
            int n = (int) c - key;

            if (c < 90 && n < 65 ){
                n = 91 - 65-n;
            }
            else if (c > 90 && n < 97){
                n = 123 - 97-n;
            }
            decryptedString[i] = (char) n;

        }
        return new String(decryptedString);
    }


}
