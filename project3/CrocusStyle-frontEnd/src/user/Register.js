import React, { Component } from 'react'
import { Container, Form, Button } from 'react-bootstrap'
import swal from 'sweetalert';
export default class Register extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
            firstName:'',
            lastName: '',
            emailAddress:'',
            phoneNumber:'',
            password: '',
            confirmPasswor:'',
            userRole:''
        }
    }
    
    state = {}

    registerHandler = () => {
        let firstName=this.state.firstName;
        let lastName=this.state.lastName;
        let emailAddress=this.state.emailAddress;
        let phoneNumber=this.state.phoneNumber;
        let password=this.state.password;
        let confirmPassword=this.state.confirmPassword;
        let userRole=this.state.userRole
        if(firstName !=="" && lastName!=="" && userRole!=="" && phoneNumber!== ""){
        if(emailAddress!==""){
            if( password !==""){
            if(password===confirmPassword){

                this.props.register(this.state);
                }
                else{
                    swal("password and cofirm password miss match");
                    this.setState({
                        firstName:'',
                        lastName: '',
                        emailAddress:'',
                        phoneNumber:'',
                        password: '',
                        confirmPassword:'',
                        userRole:''
                    })
                
                }
               }else {
                swal("password is required!");
                this.setState({
                    firstName:'',
                    lastName: '',
                    emailAddress:'',
                    phoneNumber:'',
                    password: '',
                    confirmPassword:'',
                    userRole:''
                })
               }
        }
        else{
        swal("email Address required");
        this.setState({
            firstName:'',
            lastName: '',
            emailAddress:'',
            phoneNumber:'',
            password: '',
            confirmPassword:'',
            userRole:''
        })
       }
    }else{
        swal("All fields are required");
        this.setState({
            firstName:'',
            lastName: '',
            emailAddress:'',
            phoneNumber:'',
            password: '',
            confirmPassword:'',
            userRole:''
        })
}
}
    

//email address not null 
//password not null
changeHandler = (e) => {
    let temp = {... this.state}
    temp[e.target.name] = e.target.value;
    this.setState(temp)
    console.log(temp);
} 

    render() {

        return (
            <div>

<div className="home">
                 <Container>
                    <Form.Group>
                        <Form.Label>First Name</Form.Label>
                        <Form.Control type="text" name="firstName" onChange={this.changeHandler}  value={this.state.firstName}></Form.Control>
                    </Form.Group>
                  
                    <Form.Group>
                        <Form.Label>Last Name</Form.Label>
                        <Form.Control type="text" name="lastName" onChange={this.changeHandler} value={this.state.lastName}></Form.Control>
                    </Form.Group>
                    
                    <Form.Group>
                        <Form.Label>Email Address</Form.Label>
                        <Form.Control type="text" name="emailAddress" onChange={this.changeHandler} value={this.state.emailAddress}></Form.Control>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Phone number</Form.Label>
                        <Form.Control type="text" name="phoneNumber" onChange={this.changeHandler} value={this.state.phoneNumber}></Form.Control>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Password</Form.Label>
                        <Form.Control type="password" name="password" onChange={this.changeHandler} value={this.state.password}></Form.Control>
                    </Form.Group>
                    <Form.Group>
                        <Form.Label>Confirm Password</Form.Label>
                        <Form.Control type="password" name="confirmPassword" onChange={this.changeHandler} value={this.state.confirmPassword}></Form.Control>
                    </Form.Group>

                    <Form.Group>
                        <Form.Label>User Role</Form.Label>
                        <Form.Control as="select" name="userRole" onChange={this.changeHandler} value={this.state.userRole}>

                            <option value="">Select Role</option>
                            <option value="ROLE_ADMIN">User</option>
                            {/* <option value="ROLE_USER">User</option> */}

                        </Form.Control>
                    </Form.Group>
                
                   
                    <Button variant="primary" block onClick={this.registerHandler}>Register</Button>
        </Container>
            
               
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






// <Container>
// <Form.Group>
//     <Form.Label>First Name</Form.Label>
//     <Form.Control type="text" name="firstName" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>Last Name</Form.Label>
//     <Form.Control name="lastName" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>Email Address</Form.Label>
//     <Form.Control type="email" name="emailAddress" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>Phone number</Form.Label>
//     <Form.Control type="phone" name="phoneNumber" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>Password</Form.Label>
//     <Form.Control type="password" name="password" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>Confirm Password</Form.Label>
//     <Form.Control type="password" name="confirmPassword" onChange={this.changeHandler} required></Form.Control>
// </Form.Group>
// <Form.Group>
//     <Form.Label>User Role</Form.Label>
//     <Form.Control as="select" name="userRole" onChange={this.changeHandler} required>
//         <option value="">Select Role</option>
//         <option value="ROLE_ADMIN">Admin</option>
//         <option value="ROLE_USER">User</option>
//     </Form.Control>
// </Form.Group>
// <Button variant="primary" block onClick={this.registerHandler} required>Register</Button>
// </Container>


