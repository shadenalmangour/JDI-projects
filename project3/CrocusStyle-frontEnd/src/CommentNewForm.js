import React, { Component } from 'react'
import { Container, Form, Button } from 'react-bootstrap'
import swal from 'sweetalert';
export default class CommentNewForm extends Component {
   // from (single post )PostViw => PostRow => CommentList =>CommentNewForm (like row:10)
    constructor(props){
        super(props);
        this.state ={
            newComment : {
                user: props.profiles,
                post: props.post,
                content: ''
            }
        }
    }
    handleChange= (event) =>{
        const attributeToChange = event.target.name
        const newValue = event.target.value
        const updatedComment = {...this.state.newComment}
        updatedComment[attributeToChange] = newValue
        console.log(updatedComment)
        this.setState({
            newComment: updatedComment
        })
    }
    handleSubmit =(event) =>{
        event.preventDefault()
        let content=this.state.newComment.content
        if(content !==''){
        this.props.addComment(this.state.newComment);
        this.setState({
            content: ''
        })
        }
        else{
            swal("Your comment is empty!")
        this.setState({
            content: ''   
    })
}
    }
    render() {
        return (
            <div>
         <Container>
            <Form.Group>
                    <Form.Label>Comment</Form.Label>
                    <Form.Control type="text" name="content"  onChange={this.handleChange} value={this.state.content}></Form.Control>
                </Form.Group>
                <Button variant="primary" block onClick={this.handleSubmit}>Add Comment</Button>
            </Container>
            </div>
        )
    }
}