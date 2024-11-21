package com.asm.Entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name="Video")

public class Video {
//	@Override
//	public String toString() {
//	    return "Video{id=" + Id + ", title=" + title + ", poster=" + poster+", description="+description+",active="+ active+", views="+views + "}"; // Không gọi Favorite
//	}
@Id
@Column(name="id")
private String Id;
@Column(name="Title")
private String title;
@Column(name="Poster")
private String poster;
@Column(name="description")
private String description;
@Column(name="active")
boolean active;
@Column(name="views")
private int views;
@Column(name="href")
private String href;

@OneToMany(mappedBy = "video")
private List<Favorite> favorites;

@OneToMany(mappedBy = "video")
private List<Share> shares;

}
