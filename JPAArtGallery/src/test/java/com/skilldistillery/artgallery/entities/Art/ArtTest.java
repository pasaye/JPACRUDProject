package com.skilldistillery.artgallery.entities.Art;

import static org.junit.jupiter.api.Assertions.assertEquals;
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
	void test_Name_Mapping() {
		assertNotNull(art);
		assertTrue(art.getName().equals("Mona Lisa"));
	
	}
	
	@Test
	void test_Artist_Mapping() {
		assertNotNull(art);
		assertTrue(art.getArtist().equals("Leonardo da Vinci"));
	}
	
	@Test
	void test_YearMade_Mapping() {
		assertNotNull(art);
		assertEquals(1503, art.getYearMade());
	}
	@Test
	void test_ArtStyle_Mapping() {
		assertNotNull(art);
		assertTrue(art.getStyle().equals("Realism"));
	}
	@Test
	void test_Description_Mapping() {
		assertNotNull(art);
		assertTrue(art.getDescription().equals("The Mona Lisa is a likely a portrait of the wife of a Florentine merchant. For some reason however, the portrait was never delivered to its patron, and Leonardo kept it with him when he went to work for Francis I, the King of France"));
	}
	@Test
	void test_Price_Mapping() {
		assertNotNull(art);
		assertEquals(1000000000,art.getPrice());
	}
	@Test
	void test_Location_Mapping() {
		assertNotNull(art);
		assertTrue(art.getLocation().equals("Louvre Museum"));
   }
	
	@Test
	void test_Image_Mapping() {
		assertNotNull(art);
		assertEquals("https://cdn.pariscityvision.com/library/image/5449.jpg", art.getImage());
	}

}
