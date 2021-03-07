import React, { Component } from 'react'
import ProfileView from './ProfileView'
import axios from 'axios';
import ChangePassword from './ChangePassword';
import { Alert ,Fade } from "react-bootstrap";
export default class Profile extends Component {
   
    
    // state = {}
    // ProfileHandler = () => {
    //     this.props.profile(this.state);
    // }
   
    constructor(props){
        super(props);
        this.state = {
            isEdit: false,
            clickedPostId : '',
            ischangepassword: false,
            user: props.profiles,
            successMessage: null,
            message: null,
           

        }
    }
    
    // componentDidMount(){
       
    //     this.loadProfile();
    //     console.log(this.props.userEmail)
    //     console.log(this.props.profiles)
        
    // }
    // loadProfile = () => {
    //     axios.get(`/crocus/user/userProfile?emailAddress=${this.props.userEmail}`,{
            
    //         //http://localhost:8080/crocus/user/userProfile?emailAddress=s@s.com
    //         headers: {
    //             "Authorization": "Bearer " + localStorage.getItem("token")
    //         }
    //     })
    //     .then(response =>{
    //         console.log(response.data.phoneNumber)
    //         console.log(this.props.userEmail);
    //         this.setState({
    //             profiles: response.data
    //         })
    //         console.log(this.props.profiles)
    //     })
    //     .catch(error =>{
    //         console.log("Error retreiving Profiles !!");
    //         console.log(error);
    //     })
    // }
    //axios for user/changepassword (user)
    changepassword=(user)=>{
        axios
        .put(`${process.env.REACT_APP_BACK_END_URL}user/changePassword`, user)
        .then((response) => {
          console.log(response);

          if(response.data.message===("message","you change the password successfully")){
            this.setState({
                ischangepassword: true,
                user: user,
                successMessage: "you change the password successfully",
            })
          }
          else  if("message","your  password doesn't match the old password"){
            this.setState({
                ischangepassword: false,
                user: null,
                message: "your  password doesn't match the old password"

            })
          }
        })
        .catch((error) => {
          console.log(error);
        });
  };
    
   
   
    render() {
        const message = this.state.message ? (
            <Alert variant="danger" className="error-message">{this.state.message}</Alert>
          ) : null;
          const successMessage = this.state.successMessage ? (
            <Alert variant="success" className="success-message">{this.state.successMessage}</Alert>
          ) : null;
        return (
            <div>
              <div  className="home">
                 {message} {successMessage}
                <h1 className="userName"><img src="/media/login.png "  width="100" height="100"/> </h1> 
                {!this.state.ischangepassword?
                <div className="box"> 
                <p className="userName">Welcome</p> 
                <h6 className="userName">FIRST NAME : </h6> 
                <p className="userName">{this.props.profiles.firstName}</p> 
                <h6 className="userName"> LAST NAME : </h6> 
                <p className="userName">{this.props.profiles.lastName}</p> 
                <hr/>
                <h6 className="userName">PHONE NUM : </h6> 
                <p className="userName">{this.props.profiles.phoneNumber}</p> 
                <hr/>
                <h6 className="userName">EMAIL ADDRESS NAME : </h6> 
                <p className="userName">{this.props.profiles.emailAddress}</p> 
                <hr/>
                
                {/* <p className="userName"> 
                        
                
                

                </p>  
                <hr/>*/}
                </div> : <ChangePassword  profiles={this.props.profiles} changePassword={this.changepassword}/>
                    }<div className="box-changePass"><h6 className="userName">CHANGE PASSWORD</h6> 
                <img className="changePassIcon" src="/media/cloud.png" alt="my image"    onClick={()=> {this.setState({ischangepassword: !this.state.ischangepassword})} }/>
                    </div>

                            {/* {this.props.profiles.phoneNumber} */}
                            {/* {this.state.profiles.} */}
                            </div>
             <div class="footer">
             <div class="container-footer">
             
             <p class="footer__title">CROCUS</p>
            <div class="footer-contact">
            <ul>
                <li><i class="fas fa-phone-square-alt"></i> CROUCS@crocus.com</li>
                <li><i class="fas fa-envelope"></i>C:Challengers</li>
                <img src="/media/crocus.png "  width="50" height="50"/>
            </ul>
            </div>
            </div>
            </div>
      
            </div>
        )
    }
}
// <h1 className="userName"><img src="/media/login.png "  width="100" height="100"/> </h1> 
// <div className="box"> 
// <h6 className="userName">FIRST NAME : </h6> 
// <p className="userName">{this.state.profiles.firstName}</p> 
// <hr/>
// <h6 className="userName">    LAST NAME : </h6> 
// <p className="userName">{this.state.profiles.lastName}</p> 
// <hr/>
// <h6 className="userName">PHONE NUM : </h6> 
// <p className="userName">{this.state.profiles.phoneNumber}</p> 
// <hr/>
// <h6 className="userName">EMAIL ADDRESS NAME : </h6> 
// <p className="userName">{this.state.profiles.emailAddress}</p> 
// </div>