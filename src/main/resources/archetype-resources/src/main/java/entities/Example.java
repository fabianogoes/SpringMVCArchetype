#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package entities;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Example {

	@Id
	@GeneratedValue
	private Long id;

	@Column(length = 50, nullable = false)
	private String name;

	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dateInc;

	@Enumerated(EnumType.STRING)
	private StatusRegisterType status;

	public Example() {
	}

	public Example(Long id, String name, Calendar dateInc, StatusRegisterType status) {
		this.id = id;
		this.name = name;
		this.dateInc = dateInc;
		this.status = status;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Calendar getDateInc() {
		return dateInc;
	}

	public void setDateInc(Calendar dateInc) {
		this.dateInc = dateInc;
	}

	public StatusRegisterType getStatus() {
		return status;
	}

	public void setStatus(StatusRegisterType status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Example [id=" + id + ", name=" + name + ", dateInc=" + dateInc + ", status=" + status + "]";
	}

}
