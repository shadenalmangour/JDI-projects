package com.ga.crocus.model;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.beans.factory.annotation.Value;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "User")
public class User {
	@Id
	@GeneratedValue
    @Column(name = "id", nullable = false, updatable = false)
	private int id;
	
	@JsonBackReference("post")
	@OneToMany(mappedBy="user")
	private Set<Post> posts;
	
	@JsonBackReference("comment")
	@OneToMany(mappedBy="user")
	private Set<Comment> comments;
	
	public Set<Post> getPosts() {
		return posts;
	}
	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	
	@Column(name="userRole", nullable = false, updatable = false)
	private String userRole;
	
//	@Value("${some.key:ADMIN}")
//	private String ADMIN;
//	
	
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	@Column(name="firstName", nullable = false, updatable = true)
	private String firstName;
	
	@Column(name="lastName", nullable = false, updatable = true)
	private String lastName;
	
	@Column(name="emailAddress", nullable = false, updatable = true)
	private String emailAddress;
	
	@Column(name="phoneNumber", nullable = false, updatable = true)
	private String phoneNumber;
	
	
	@Column(name="password", nullable = false, updatable = true)
	private String password;
	
	@Column(name="confirmPassword", nullable = false, updatable = true)
	private String confirmPassword;
	
	@Column(name = "createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;

	@Column(name = "updatedat", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;
	
	private String oldPass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
//	public Set<Post> getPosts() {
//		return posts;
//	}
//	public void setPosts(Set<Post> posts) {
//		this.posts = posts;
//	}
//	public Set<Comment> getComments() {
//		return comments;
//	}
//	public void setComments(Set<Comment> comments) {
//		this.comments = comments;
//	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public LocalDateTime getCreateAt() {
		return createAt;
	}
	public void setCreateAt(LocalDateTime createAt) {
		this.createAt = createAt;
	}
	public LocalDateTime getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(LocalDateTime updateAt) {
		this.updateAt = updateAt;
	}
	public String getOldPass() {
		return oldPass;
	}
	public void setOldPass(String oldPass) {
		this.oldPass = oldPass;
	}

	
	
}