package com.asm.Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonBackReference;




@Entity
@Table(name="Share")
public class Share {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name="VideoId")
	@JsonBackReference
	private Video video;
	
	@ManyToOne
	@JoinColumn(name="UserId")

	private User user;
	
	@Column(name="Emails")
	private String emails;
	
	@Temporal(TemporalType.DATE)
	private Date shareDate;
}
