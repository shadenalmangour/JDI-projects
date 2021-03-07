import React, { Component } from 'react'
import { Container, Form, Button } from 'react-bootstrap'
import swal from 'sweetalert';
export default class PostNew extends Component {
    constructor(props) {
        super(props)
        this.state = {
             newPost: {
               user: props.profiles,
               name: '',
            type: '',
            description: '',
            photo: ''
             }
           
        }
    }
    handleChange= (e) =>{
        let temp = {...this.state.newPost}
        temp[e.target.name] = e.target.value;
        this.setState({newPost:temp})
        console.log(temp);
    }
    handleSubmit= (event) => {
        event.preventDefault();
        let name=this.state.newPost.name;
        let type=this.state.newPost.type;
        let photo=this.state.newPost.photo;
        let description=this.state.newPost.description;
    if(name !== '' && type !=='' && photo !=='' && description  !==''){
      
        this.props.addPost(this.state.newPost);
        this.setState({
            name: '',
            type: '',
            description: '',
            photo: ''
          
    })
        }else {
            swal("All fields are required")
           this.setState({
                name: '',
                type: '',
                description: '',
                photo: ''
              
        })
    }
}
    render() {
        return (
            <div>

            <Container>
            <Form.Group>
                    <Form.Label>Name:</Form.Label>
                    <Form.Control type="text" name="name"  onChange={this.handleChange} value={this.state.name}></Form.Control>
                </Form.Group>

                <Form.Group>
                    <Form.Label >Origin:</Form.Label>
                    <Form.Control type="text" name="type"   onChange={this.handleChange} value={this.state.type}></Form.Control>
                </Form.Group>

                <Form.Group>
                    <Form.Label>Description:</Form.Label>
                    <Form.Control type="text" name="description" 
                    onkeypress="this.style.width = ((this.value.length + 1) * 50) + 'px';"
                    onChange={this.handleChange} value={this.state.description}></Form.Control>
                </Form.Group>

                <Form.Group>
                    <Form.Label>Photo:</Form.Label>
                    <Form.Control type="text" name="photo"   onChange={this.handleChange}value={this.state.photo}></Form.Control>
                </Form.Group>


                <Button variant="primary" block onClick={this.handleSubmit}>Add Post</Button>
            </Container>
           
                    
                   
                  
                  

            </div>
        )
    }
}






// <<<<<<< HEAD
//                 <form onSubmit={this.handleSubmit}>
//                     <div>
//                         <label>Name</label>
//                         <input className="main-btnn2"
//                         name="name"
//                         type="text"
//                         onChange={this.handleChange}></input>
//                     </div>
//                     <div>
//                         <label>Type of Plant</label>
//                         <input className="main-btnn2"
//                         name="type"
//                         type="text"
//                         onChange={this.handleChange}></input>
//                     </div>
//                     <div>
//                         <label>Description</label>
//                         <input className="main-btnn2"
//                         name="description"
//                         type="text"
//                         onChange={this.handleChange}></input>
//                     </div>
//                     <div>
//                         <label>Photo</label>
//                         <input  className="main-btnn2"
//                         src={this.props.photo}
//                         name="photo"
//                         type="text"
//                         required
//                         onChange={this.handleChange}></input>
//                     </div>
//                     <div>
//                         <input className="main-btnn" type="submit" value="Add"></input>
//                     </div>
//                 </form>
