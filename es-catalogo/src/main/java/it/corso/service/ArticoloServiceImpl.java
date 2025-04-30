package it.corso.service;

import org.springframework.stereotype.Service;
import it.corso.model.Articolo;
import it.corso.repository.ArticoloRepository;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class ArticoloServiceImpl implements ArticoloService {

    @Autowired
    private ArticoloRepository articoloRepository;

    @Override
    public List<Articolo> elencoArticoli(){
        return (List<Articolo>) articoloRepository.findAll();
    }

    
    @Override
    public Articolo datiArticolo(Integer idArticolo) {
    Optional<Articolo> articoloOptional = articoloRepository.findById(idArticolo);
    if(articoloOptional.isPresent()){
        return articoloOptional.get();
    }
    return null;
    }

    @Override
    public int[] minmaxid() {
        int min = articoloRepository.ritornoMinId();
        int max = articoloRepository.ritornoMaxId();
        
        return new int[]{min,max};
    }
    
}
