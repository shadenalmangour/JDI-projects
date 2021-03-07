  
package com.ga.crocus.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.crocus.model.User;

public interface UserDao extends CrudRepository<User, Integer> {
		public User findByEmailAddress(String emailAddress);
	}
