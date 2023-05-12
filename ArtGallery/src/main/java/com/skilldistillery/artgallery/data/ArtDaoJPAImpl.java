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
	public Art findById(int filmId) {	
		return em.find(Art.class, filmId);
	}

	@Override
	public List<Art> findAll() {
		String query = "SELECT art FROM Art art ";
		List<Art> queryResults = em.createQuery(query, Art.class).getResultList();	
		return queryResults;
	}

	@Override
	public Art create(Art art) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Art update(int id, Art art) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
