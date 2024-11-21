package com.asm.Dao;

import java.util.List;

import com.asm.Entity.Favorite;
import com.asm.Entity.Video;



public interface FavoriteDao {
	List<Favorite> finAll();
	List<Video> favoriteVideoByUser(String id);
	
	Favorite FindById(String id);
	
	void Create(Favorite item);
	void Update(Favorite item);
	void deleteById(String id);

}
