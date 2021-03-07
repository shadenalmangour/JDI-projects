package com.ga.crocus.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.crocus.model.Comment;


public interface CommentDao extends CrudRepository<Comment, Integer>{
	public Comment findById(int id);
}
