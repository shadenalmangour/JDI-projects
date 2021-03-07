import React, { Component } from 'react'
import { Container, Form, Button } from 'react-bootstrap'
import swal from 'sweetalert';
export default class ChangePassword extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
           
             //get the logged in user from props 
            user: props.profiles
          
            
        }
    }
    
    state = {}
    changeHandler = (event) => {
        const attributeToChange = event.target.name
        const newValue = event.target.value
        const updatedUser = {...this.state.user}
        updatedUser[attributeToChange] = newValue
        console.log(updatedUser)
        this.setState({
            user: updatedUser
        })

    } 
  
    handleSubmit =(event) =>{
       
        
        let password=this.state.user.password;
        let confirmPassword=this.state.user.confirmPassword;


            if( password !==""){
            if(password===confirmPassword){
                this.props.changePassword(this.state.user);
                this.setState({
                    oldPass:'',
                    password:'',
                    confirmPassword:''
                })
                }
                else{
                    swal("password and cofirm password miss match");
                    this.setState({
                       oldPass:'',
                        password: '',
                        confirmPassword:''
                        
                    })
                
                }
               }else {
                swal("password is required!");
                this.setState({
                    oldPass:'',
                    password: '',
                    confirmPassword:''
                })
               }
        
    } 

       

    
    
    render() {
        return (
            <div>
                 <Container>
                <Form.Group >
                        <Form.Label>Old Password</Form.Label>
                        <Form.Control type="text" name="oldPass" onChange={this.changeHandler} value={this.state.oldPass }></Form.Control>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>New Password</Form.Label>
                        <Form.Control type="password" name="password" onChange={this.changeHandler} value={this.state.password}></Form.Control>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Confirm Password</Form.Label>
                        <Form.Control type="password" name="confirmPassword" onChange={this.changeHandler} value={this.state.confirmPassword}></Form.Control>
                    </Form.Group>
                    <Button variant="primary" block onClick={this.handleSubmit} >Change Password</Button>
                </Container>
            </div>
        )
    }
}