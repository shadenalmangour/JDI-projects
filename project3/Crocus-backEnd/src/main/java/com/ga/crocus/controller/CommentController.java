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

import com.ga.crocus.dao.CommentDao;
import com.ga.crocus.model.Comment;


@RestController // simply return the object and data written into HTTP response
// as JSON
public class CommentController {
//CRUD OPERATIONS
// C -> Create = done
// R -> Select = done
// U -> Update = done
// D -> Delete =  done
	@Autowired
	private Environment env;
	@Autowired
	private CommentDao dao;

// HTTP POST REQUEST - Comment Add
	@PostMapping("/comment/add")
	public Comment addComment(@RequestBody Comment comment) {
		dao.save(comment);
		return comment;
	}

// HTTP GET REQUEST - Comment Index
	@GetMapping("/comment/index")
	public Iterable<Comment> getComment() {
		var it = dao.findAll();
		return it;
	}

	/*
	 * // HTTP GET REQUEST - Comment Detail
	 * 
	 * @GetMapping("/comment/detail") public Comment commentDetails(@RequestParam
	 * int id) { System.out.println(id); Comment comment = dao.findById(id); return
	 * comment; }
	 * 
	 * // HTTP GET REQUEST - Comment Edit
	 * 
	 * @PutMapping("/comment/edit") public Comment editComment(@RequestBody Comment
	 * comment) { dao.save(comment); return comment; }
	 */

// HTTP GET REQUEST - Comment Delete
	@DeleteMapping("/comment/delete")
	public boolean deleteComment(@RequestParam int id) {
		Comment comment = dao.findById(id);
		dao.deleteById(id);
		return true;
	}

}
