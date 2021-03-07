package com.ga.crocus.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.ga.crocus.dao.PostDao;
import com.ga.crocus.model.Post;


@RestController
public class PostController {
	
	
	
	@Autowired
	private Environment env;
	@Autowired
	private PostDao dao;
	
	// HTTP POST REQUEST - Post Add
	
		//@CrossOrigin(origins = "http://React-app-link")
		@PostMapping("/post/add")
		public Post addPost(@RequestBody Post post) {
			dao.save(post);
			return post;	
		}
		
		
		// HTTP GET REQUEST - Post Index
		@GetMapping("/post/index")
		public Iterable<Post> getPost() {
			var it = dao.findAll();
			return it;
		}
		
		// HTTP GET REQUEST - Post Detail
		@GetMapping("/post/detail")
		public Post postDetails(@RequestParam int id) {
			System.out.println(id);
			Post post = dao.findById(id);
			return post;
		}
		
		
		// HTTP GET REQUEST - Post Edit
		@PutMapping("/post/edit")
		public Post editPost(@RequestBody Post post) {
			dao.save(post);
			return post;
		}

	// HTTP GET REQUEST - Post Delete
		@DeleteMapping("/post/delete")
		public boolean deletePost(@RequestParam int id) {
			Post post = dao.findById(id);
			dao.deleteById(id);
			return true;
		}

}
