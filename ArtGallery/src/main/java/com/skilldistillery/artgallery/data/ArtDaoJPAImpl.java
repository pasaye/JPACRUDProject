package com.skilldistillery.artgallery.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.artgallery.entities.Art.Art;

@Service
@Transactional
public class ArtDaoJPAImpl implements ArtDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Art findById(int artId) {	
		return em.find(Art.class, artId);
	}

	@Override
	public List<Art> findAll() {
		String query = "SELECT art FROM Art art ";
		List<Art> queryResults = em.createQuery(query, Art.class).getResultList();	
		return queryResults;
	}

	@Override
	public Art create(Art art) {
		em.persist(art);
		return art;
	}

	@Override
	public Art update(int id, Art art) {
		Art newArt = em.find(Art.class, id);
		
		newArt.setName(art.getName());
		newArt.setArtist(art.getArtist());
		newArt.setYearMade(art.getYearMade());
		newArt.setStyle(art.getStyle());
		newArt.setDescription(art.getDescription());
		newArt.setPrice(art.getPrice());
		newArt.setLocation(art.getLocation());
		
		return newArt;
	}

	@Override
	public boolean deleteById(int id) {
		
		if (id != 0) {
			Art art = em.find(Art.class, id);
			em.remove(art);
			return true;
		}else {
			System.out.println("No such work exist");
			return false;
		}
	}

}
