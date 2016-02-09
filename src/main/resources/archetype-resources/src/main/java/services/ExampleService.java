#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entities.Example;
import repositories.ExampleRepository;

@Service
public class ExampleService {

	@Autowired
	private ExampleRepository repository;
	
	public Iterable<Example> list(){
		return this.repository.findAll();
	}
	
}
