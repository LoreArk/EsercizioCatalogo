package it.corso.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dettaglio")
public class dettaglioController {

    @GetMapping
    public String renderPage(){
        return "dettaglio";
    }
}
