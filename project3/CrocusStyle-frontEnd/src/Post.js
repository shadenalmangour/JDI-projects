import React, { Component } from 'react'
import axios from 'axios';
import PostView from "./PostView";
import PostNew from "./PostNew";
import PostEdit from "./PostEdit";
import { Container, Form, Button } from 'react-bootstrap'
import PostIndex from './PostIndex';
import PostRow from './PostRow'
import { Alert ,Fade } from "react-bootstrap";
export default class Post extends Component {
    constructor(props){
        super(props);
        this.state = {
            posts: props.posts,
            isEdit: false,
            isPost:true,
            clickedPostId : '',
            message: null,
            successMessage: null,
            first: false,
            isAdd:false,
            clickedaddPostId:'',
        }
    }


    handle(){
       
        this.setState({first: !this.state.first})
      } 
    // componentDidMount(){
    //     this.props.loadPost();
    // }
    // loadPost = () => {
    //     axios.get("/crocus/post/index")
    //     .then(response =>{
    //         console.log(response)
    //         this.setState({
    //             posts: response.data
    //         })
    //     })
    //     .catch(error =>{
    //         console.log("Error retreiving Posts !!");
    //         console.log(error);
    //     })
    // }
    // loadCommentList=(Post)=>{
    //     if(Post.comments.length){
    //         console.log(Post.name, "Have this comments");
    //         console.log(Post.comments.length);
    //         return (<ul>
    //                 {Post.Comments.map((item,index)=>{
    //                     return  <li>{item.description}</li> 
    //                 }
    //                 )}
    //                </ul>)
    //     }
    // }
    addPost = (post) =>{
        axios.post(`${process.env.REACT_APP_BACK_END_URL}post/add`, post, 
        {
            headers: {
                "Authorization": "Bearer " + localStorage.getItem("token")
            }
        })
            .then(response =>{
                console.log("Added!!")
                const updatedPostsList = [...this.state.posts];
                updatedPostsList.push(response.data);
                this.setState({
                    posts: updatedPostsList,
                    successMessage: "Post added successfully"

                })
            })
            .catch(error =>{
                console.log("Error Adding Post");
                console.log(error)
                this.setState({
                    message: "Error Adding Post!"
                })
            })
    }
    deletePost= (id) =>{
        axios.delete(`${process.env.REACT_APP_BACK_END_URL}post/delete`, {params:{id: id},
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        }
    })
            .then(response =>{
                console.log("Deleted!")
                 this.setState({
               message: "Post Deleted successfully"
                       })
                // const updatedAuthorsList = [...this.state.authors];
                // const index = updatedAuthorsList.findIndex(x => x.id === id);
                // if(index !== -1){
                //     updatedAuthorsList.splice(index, 1) 
                //     this.setState({
                //         authors: updatedAuthorsList
                //     })
                // }
                this.props.loadPost();
            })
            .catch(error =>{
                console.log("Error Deleting Post!")
                console.log(error)
                this.setState({
                    message: "Error Deleting Post!"
                })
            })
    }
    editView =(id) =>{
        
        this.setState({
            isEdit: !this.state.isEdit,
            clickedPostId: id
        })
    }
    editPost = (post) =>{
        console.log(post)
        axios.put(`${process.env.REACT_APP_BACK_END_URL}post/edit`, post, 
        {
            headers: {
                "Authorization": "Bearer " + localStorage.getItem("token")
            }
            })
            .then(response =>{
                
                console.log("Edited!!")
                console.log(response);
                 this.setState({
                successMessage: "Post Edited successfully",
                               })
                this.props.loadPost();

            })
            .catch(error =>{
                console.log("Error Editing Post");
                console.log(error)
                this.setState({
                    message: "Error Editing Post"
                })
            })
    }
    render() {
        //transition={Fade} 
        const successMessage = this.state.successMessage ? (
        <Alert variant="success" className="success-message">{this.state.successMessage}</Alert>
         ) : null;
        const message = this.state.message ? (
         <Alert variant="danger" className="error-message">{this.state.message}</Alert>
        ) : null;

        return (
          
            <div>
                 <div className="home">
                    {successMessage}
                     {message}
               {/* {(!this.state.isPost) ?<PostNew addPost={this.addPost} profiles={this.props.profiles}/>  */}
               <img className="changePassIcon" src="/media/add2.png" alt="my image"  onClick={this.handle.bind(this)}/>   
               <div className="center1">{this.state.first ? <PostNew addPost={this.addPost} profiles={this.props.profiles} /> : null }</div>
               
            

               {/* <div className="box-changePass"><h6 className="userName">CHANGE PASSWORD</h6> 
                <img className="changePassIcon" src="/media/cloud.png" alt="my image"    onClick={()=> {this.setState({ischangepassword: !this.state.ischangepassword})} }/>
                    </div> */}





               
               <h1 className="userName">POSTS</h1> 
               <ul>
                    {this.state.posts.map((post, index) =>
                    <div  key={index}>
                    <PostView {...post} deletePost ={this.deletePost} editView={this.editView}  profiles={this.props.profiles}/>

                  <div className="center1"> {(this.state.isEdit && this.state.clickedPostId === post.id) ? <PostEdit  post={post} editPost={this.editPost}  profiles={this.props.profiles} /> : null}</div> 

                    {/* {this.loadCommentList(post)} */}
                    </div>)}

                    
          
                </ul>

                </div>    



                <div className="footer">
<div className="container-footer">
            <p className="footer__title">CROCUS</p>
            <div className="footer-contact">
            <ul>
				<li><i className="fas fa-phone-square-alt"></i> CROUCS@crocus.com</li>
				<li><i className="fas fa-envelope"></i>C:Challengers</li>
                <img src="/media/crocus.png "  width="50" height="50"/>


				<li></li>
			</ul>
            </div>
            </div>
</div> 
            </div>
        )
    }
}