package com.asm.Dao;

import java.util.List;

import com.asm.Entity.Video;



public interface VideoDao {
	List<Video> finAll();
	Video FindById(String id);
	void Create(Video item);
	void Update(Video item);
	void deleteById(String id);
	
	String NewID();
}
