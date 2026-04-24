package mx.uv.pamf.parcial.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SaludoController {
    @GetMapping("/saludo")
    public String getMethodName() {
        return new String("Nombre: Pedro Alonso Montes Fabian, Calificación: 8.0");
    }
    
}
