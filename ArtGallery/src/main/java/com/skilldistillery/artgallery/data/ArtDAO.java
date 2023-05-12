package com.skilldistillery.artgallery.data;

import java.util.List;

import com.skilldistillery.artgallery.entities.Art.Art;

public interface ArtDAO {

	Art findById(int filmId);

	List<Art> findAll();

	Art create(Art art);

	Art update(int id, Art art);

	boolean deleteById(int id);
}
