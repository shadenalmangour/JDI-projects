import "./App.css";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import Register from "./user/Register";
import Login from "./user/Login";
import axios from "axios";
import React, { Component } from "react";
import { decode } from "jsonwebtoken";
import { Alert ,Fade } from "react-bootstrap";
import Home from "./Home";
import CommentList from './CommentList'
import Post from "./Post";
import PostNew from "./PostNew";
import PostView from "./PostView";
import PostIndex from "./PostIndex";
import PostWithoutLogin from "./PostWithoutLogin";
import Profile from './user/Profile';

//URL = "AWS"
//const URL=" https://cors-anywhere.herokuapp.com/http://crocuswebapp007-env.eba-mzvkpuwp.us-east-2.elasticbeanstalk.com/"
export default class App extends Component {
  state = {
    isAuth: false,
    user: null,
    message: null,
    successMessage: null,
    profiles: {},
    posts: {}
  };
  componentDidMount() {
    let token = localStorage.getItem("token");
    if (token != null) {
      let user = decode(token);
      if (user) {
        this.loadProfile(user.sub)
        //this.loadPost(this.state.profiles.id)
        this.loadPost()
        this.setState({
          isAuth: true,
          user: user,
          userEmail: user.emailAddress,
        });
      } else if (!user) {
        localStorage.removeItem("token");
        this.setState({
          isAuth: false,
        });
      }
    }
  }
  registerHandler = (user) => {
    axios
      .post(`${process.env.REACT_APP_BACK_END_URL}user/registration`, user)
      .then((response) => {
        console.log(response);
        if(response.data.message==="User registered successfully"){
          this.setState({
            isAuth: true,
            user: null,
            successMessage: "User registered successfully"
          })
        }
        else  if(response.data.message==="User already exists"){
          this.setState({
            isAuth: false,
            user: null,
            message: "email address already exists"
          })
        }
      })
      .catch((error) => {
        console.log(error);
      });
  };
  loginHandler = (user) => {
    axios
      .post(`${process.env.REACT_APP_BACK_END_URL}user/authenticate`, user)
      .then((response) => {
        console.log(response);
        console.log(response.data.token);
        console.log(user.emailAddress); 
        if (response.data.token != null) {
          localStorage.setItem("token", response.data.token);
          let user = decode(response.data.token);
          console.log(user)
          this.setState({
            isAuth: true,
            user: user,
            successMessage: "Successfully logged in!!!",
            message: null,
            userEmail: user.sub
          });
          this.loadProfile(user.sub)
         // this.loadPost(this.state.profiles.id)
         this.loadPost()
        } else {
          this.setState({
            isAuth: false,
            user: null,
            message: "Incorrect username or password",
          });
        }
      })
      .catch((error) => {
        console.log(error);
        this.setState({
          isAuth: false,
          message: "Error Occured. Please try again later!!!",
        });
      });
  };
  loadProfile = (sub) => {
    axios.get(`${process.env.REACT_APP_BACK_END_URL}user/userProfile?emailAddress=${sub}`,{
        //http://localhost:8080/crocus/user/userProfile?emailAddress=s@s.com
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        }
    })
    .then(response =>{
        console.log(response.data.phoneNumber)
        console.log(this.props.userEmail);
        this.setState({
            profiles: response.data
        })
        console.log(this.props.profiles)
    })
    .catch(error =>{
        console.log("Error retreiving Profiles !!");
        console.log(error);
    })
}
loadPost = () => {
  axios.get(`${process.env.REACT_APP_BACK_END_URL}post/index`)
  .then(response =>{
      console.log(response)
      this.setState({
          posts: response.data
      })
  })
  .catch(error =>{
      console.log("Error retreiving Posts !!");
      console.log(error);
  })
}
  // ProfileHandler = (emailAddress) => {
  //   axios
  //     .post("crocus/user/userProfile", emailAddress)
  //     .then((response) => {
  //       console.log(response);
  //       console.log(response.data.token);
  //       if (response.data.token != null) {
  //         localStorage.setItem("token", response.data.token);
  //         let user = decode(response.data.token);
  //       }
  //     })
  //     .catch((error) => {
  //       console.log(error);
  //       this.setState({
  //         isAuth: false,
  //         message: "Error Occured. Please try again later!!!",
  //       });
  //     });
  // };
  onLogoutHandler = (e) => {
    localStorage.removeItem("token");
    this.setState({
      isAuth: false,
      user: null,
      successMessage: "Successfully logged out!"
    });
  };
  render() {
    const { isAuth } = this.state;
    // const { isAuth,user } = this.state;
    const message = this.state.message ? (
      <Alert variant="danger" className="error-message">{this.state.message}</Alert>
    ) : null;
    const successMessage = this.state.successMessage ? (
      <Alert variant="success" className="success-message">{this.state.successMessage}</Alert>
    ) : null;
    return (
      <Router>
        <nav >
          {message} {successMessage}
          {isAuth ? (
            <div class="hedar">
              <div class="navbar">
                 <ul>  <img src="/media/crocus.png "  width="50" height="50"/>
                 {/* <li> <p className="p1">{this.state.user ? "Welcome " + this.state.user.sub : null} {"  "}</p></li> */}
                 <li> <Link to="/profile">Profile</Link> {"  "}</li>
                 <li> <Link to="/home">Home</Link> {"  "}</li>
                 <li><Link to="/post">Post</Link> {"  "}</li>
                 <li> <Link to="/logout" onClick={this.onLogoutHandler}> Logout </Link>{" "}</li>
              </ul>
              </div>
            </div>
          ) : (
           <div class="hedar">
              <div class="navbar">
              <ul>
              <li> <Link to="/home">Home</Link> {"  "}</li>
                <li> <Link to="/post">Post</Link> {"  "}</li>
                <li><Link to="/register">Register</Link> {"  "}</li>
                <li><Link to="/login">Login</Link> {"  "}</li>
              </ul> 
            </div>
         </div>
          )}
        </nav>
        <div>
          <Route path="/login" component={() => isAuth ? <Home /> : <Login login={this.loginHandler} />}></Route>
           <Route path="/register" component={() => isAuth ? <Login /> : <Register register={this.registerHandler} />}></Route>
            <Route
            path="/post"

            component={() => isAuth ? <Post profiles={this.state.profiles} posts={this.state.posts} loadPost={this.loadPost}/>: <PostWithoutLogin/>
            }
          ></Route>
           <Route
            path="/home"
            component={() =>
             <Home /> 
            }
          ></Route>
          <Route
            path="/profile"
            component={() => 
              isAuth ? <Profile   profiles={this.state.profiles}/> : <Login login={this.loginHandler} />
            }
          ></Route>
         <Route
            path="/logout"
            component={() =>
              isAuth ? <Home /> : <Login login={this.loginHandler} />
            }
          ></Route>
        </div>
      </Router>
    );
  }
}