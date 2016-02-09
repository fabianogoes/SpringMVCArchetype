#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package com.eprogramar.mvc${artifactId}.repositories;

import java.util.Calendar;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import entities.Example;
import entities.StatusRegisterType;
import repositories.ExampleRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "/applicationContext-test.xml")
@Transactional // <== Não faz commit no banco, na grava nenhum registro
public class ExampleRepositoryTest {
	
	@Autowired
	private ExampleRepository exampleRepository; 
	
	@Test
	public void testInsertExample(){
		// Fabiano
		Example entity = exampleRepository.save( new ExampleBuilder().build() );
		Assert.assertTrue("o id deve ser maior que 0 depois de inserido", entity.getId() > 0);
	}
	
	@Test
	public void testUpdateExample(){
		// FelixPinho
		Example entityInsert = exampleRepository.save( new ExampleBuilder().build() );
		Assert.assertTrue("o id deve ser maior que 0 depois de inserido", entityInsert.getId() > 0);
		
		Example entityUpdate = exampleRepository.findOne(entityInsert.getId());
		entityUpdate.setName("FelixPinho");
		entityUpdate = exampleRepository.save( entityUpdate );
		
		Assert.assertEquals("O Valor alterado do nome do usuário deve ser FelixPinho", "FelixPinho", entityUpdate.getName());
		
	}
	
	@Test
	public void testDeleteExample() {
		// Diego
		Example user = exampleRepository.save( new ExampleBuilder().build() );
		Long id = user.getId();
		exampleRepository.delete(user);
		user = exampleRepository.findOne(id);
		Assert.assertNull("O entity deve ser nulo(DELETADO)", user);
	}
	
	@Test
	public void testFindOneExample(){
		// Klayton
		Long id = exampleRepository.save( new ExampleBuilder().withName("Klayton").build() ).getId();
		Example user = exampleRepository.findOne(id);
		
		Assert.assertNotNull("Objeto não pode ser nulla.:", user);
		Assert.assertEquals("O entity a ser buscado deve ser o Klayton", "Klayton", user.getName());
	}
	
	@Test
	public void testFindAllExamples(){
		// Lucas
		exampleRepository.save( new ExampleBuilder().build() );
		List<Example> users = (List<Example>) exampleRepository.findAll();
		
		Assert.assertNotNull("Lista nao pode ser nula", users );
		Assert.assertTrue("A lista Deve ser  maior que 0", users.size() > 0);
	}
	
}

class ExampleBuilder{
	private Example user = new Example(null, "TEST", Calendar.getInstance(), StatusRegisterType.ON);
	
	public ExampleBuilder withName(Long id){
		user.setId(id);
		return this;
	}
	public ExampleBuilder withName(String name){
		user.setName(name);
		return this;
	}
	public ExampleBuilder withDateInc(Calendar dateInc){
		user.setDateInc(dateInc);
		return this;
	}
	public ExampleBuilder withStatus(StatusRegisterType status){
		user.setStatus(status);
		return this;
	}
	
	public Example build(){
		return user;
	}	

}
