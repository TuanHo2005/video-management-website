package com.asm.Entity;

import java.util.Date;

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

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="Favorite"	
		)
public class Favorite {
	
//	@Override
//	public String toString() {
//	    return "Favorite{id=" + id + ", user=" + user + "}"; // Không gọi Video
//	}

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

	@Temporal(TemporalType.DATE)
	private Date likeDate;
}
