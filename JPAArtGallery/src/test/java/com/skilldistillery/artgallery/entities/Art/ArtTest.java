package com.skilldistillery.artgallery.entities.Art;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ArtTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Art art;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAArtGallery");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		art = em.find(Art.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		art = null;
	}

	@Test
	void test_Art_Mapping() {
		assertNotNull(art);
		assertTrue(art.getName().equals("Mona Lisa"));
	
	}

}
