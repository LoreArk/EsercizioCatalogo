package it.corso.repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.corso.model.Articolo;

public interface ArticoloRepository extends CrudRepository<Articolo, Integer>{
    
    @Query(value="SELECT MAX(id_articolo) FROM articolo", nativeQuery = true)
    int ritornoMaxId();

    @Query(value="SELECT MIN(id_articolo) FROM articolo", nativeQuery = true)
    int ritornoMinId();
}
