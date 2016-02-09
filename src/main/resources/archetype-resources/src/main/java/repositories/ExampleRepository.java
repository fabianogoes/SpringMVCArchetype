#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import entities.Example;

@Repository
public interface ExampleRepository extends CrudRepository<Example, Long> {

}
