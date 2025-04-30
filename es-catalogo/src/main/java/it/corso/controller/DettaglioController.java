package it.corso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.corso.model.Articolo;
import it.corso.service.ArticoloService;

@Controller
@RequestMapping("/dettaglio")
public class DettaglioController {

    @Autowired
    private ArticoloService articoloService;

    @GetMapping
    public String renderPage(@RequestParam(defaultValue = "0") Integer id, Model model){
        Articolo articolo = articoloService.datiArticolo(id);
        if(articolo == null){
            return "redirect:/";
        }
        model.addAttribute("articolo", articolo);
        return "dettaglio";
    }
}