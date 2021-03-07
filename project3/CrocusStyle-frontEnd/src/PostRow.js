import React, { Component } from 'react'
import CommentList from './CommentList'
export default class PostRow extends Component {
    constructor(props){
        super(props);
        this.state = { 
            post: props.posts,
            isEdit: false,
            clickedCommentId : ''
        }
    }
    render() {
        return (//add comment + display comment post on this post by passing post to comment list 
            <div>
                {/* <h1>This is post row new </h1> */}
{/*                       
                      {    (this.props.post.comments !== null ) ? 
                       this.props.post.comments.map((comment, index) =>
                      <div  key={index}> */}
                   <CommentList  post={this.props.post}  profiles={this.props.profiles}/>
                          {/* </div>) :
                   null  }  */}
                    {/* {this.loadCommentList(post)} */}
            </div>
        )
    }
}