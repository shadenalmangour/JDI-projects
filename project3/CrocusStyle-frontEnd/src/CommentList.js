import React, { Component } from 'react';
import axios from 'axios';
import Comment from './Comment'
import CommentNewForm from './CommentNewForm'
import { Alert ,Fade } from "react-bootstrap";
export default class CommentList extends Component {
    constructor(props){
        super(props);
        this.state = {
            comments: props.post.comments,
            isEdit: false,
            clickedCommentId : '',
            message: null,
            successMessage: null,


        }
    }
    // componentDidMount(){
    //     this.loadCommentList();
    // }
    // loadCommentList(){
    //     axios.get("/crocus/comment/index")
    //     .then(response =>{
    //         console.log(response)
    //         this.setState({
    //             comments: response.data
    //         })
    //     })
    //     .catch(error =>{
    //         console.log("Error retreiving Comments !!");
    //         console.log(error);
    //     })
    // }
    addComment = (comment) =>{
        axios.post(`${process.env.REACT_APP_BACK_END_URL}comment/add`, comment, 
        {
            headers: {
                "Authorization": "Bearer " + localStorage.getItem("token")
            }
        })
            .then(response =>{
                console.log("Added!!")
                const updatedCommentsList = [...this.state.comments];
                updatedCommentsList.push(response.data);
                this.setState({
                    comments: updatedCommentsList,
                    successMessage: "Comment added successfully"

                })
                // this.loadCommentList();
            })
            .catch(error =>{
                console.log("Error Adding Comment");
                console.log(error)
                this.setState({
                    message: "Error Adding Comment!"
                })
                
            })
    }
    deleteComment= (id) =>{
        axios.delete(`${process.env.REACT_APP_BACK_END_URL}comment/delete?id=${id}`,{
            headers: {
                "Authorization": "Bearer " + localStorage.getItem("token")
            }
        })
            .then(response =>{
                console.log("Deleted!")
                const updatedCommentsList = [...this.state.comments];
                const index = updatedCommentsList.findIndex(x => x.id === id);
                if(index !== -1){
                    updatedCommentsList.splice(index, 1) 
                    this.setState({
                        comments: updatedCommentsList,
                        message: "Comment Deleted "
                        
                    })
                }
                // this.loadCommentList();
            })
            .catch(error =>{
                console.log("Error Deleting Comment!")
                console.log(error)
                this.setState({
                    message: "Error Deleting Comment!"
                })
            })
    }
    // editView =(id) =>{
    //     this.setState({
    //         isEdit: !this.state.isEdit,
    //         clickedAuthorId: id
    //     })
    // }
    // editAuthor = (author) =>{
    //     axios.put("/blogapp/author/edit", author, {
    //         headers: {
    //             "Authorization": "Bearer " + localStorage.getItem("token")
    //         }
    //     })
    //         .then(response =>{
    //             console.log("Edited!!")
    //             console.log(response);
    //             this.loadAuthorList();
    //             this.setState({
    //                 isEdit:false
    //             })
    //         })
    //         .catch(error =>{
    //             console.log("Error Editing author");
    //             console.log(error)
    //         })
    // }
    render() {
        const successMessage = this.state.successMessage ? (
             <Alert variant="success" className="success-message">{this.state.successMessage}</Alert>
              ) : null;
             const message = this.state.message ? (
              <Alert variant="danger" className="error-message">{this.state.message}</Alert>
             ) : null;
        return (
            <div>

                    {successMessage}
                     {message}
                {(!this.state.isEdit) ?    <CommentNewForm addComment={this.addComment} profiles={this.props.profiles} post={this.props.post}/> : null}
                {/* <h5>Comment List</h5> */}
                <div>
                    {this.state.comments.map((comment, index) =>
                    <div  key={index}>
                    <Comment {...comment} deleteComment ={this.deleteComment} profiles={this.props.profiles} post={this.props.post}/>
                    </div>)}
                </div>
            </div>
        )
    }
}