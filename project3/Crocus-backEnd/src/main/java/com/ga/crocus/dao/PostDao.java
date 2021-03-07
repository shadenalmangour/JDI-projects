package com.ga.crocus.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.crocus.model.Post;

public interface PostDao extends CrudRepository<Post, Integer> {
	public Post findById(int id);


}
