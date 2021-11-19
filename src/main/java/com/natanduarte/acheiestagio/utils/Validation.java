
package com.natanduarte.acheiestagio.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class Validation {

    public static String validateCPF(String cpf) {
        String cpfPattern = "/^\\d{3}\\.\\d{3}\\.\\d{3}\\-\\d{2}$/";

        Pattern pattern = Pattern.compile(cpfPattern);
        Matcher matcher = pattern.matcher(cpf);

        String error = "CPF inválido. Preencha corretamente, animal.";

        if (matcher.matches()) error = null;

        return error;
    }
}
