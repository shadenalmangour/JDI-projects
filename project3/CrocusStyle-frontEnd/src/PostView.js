import React, { Component } from 'react'
import PostNew from "./PostNew";
import PostRow from './PostRow';
import { Card ,Img,Title } from "react-bootstrap";


export default class PostView extends Component {
    constructor(props) {
        super(props)
    
        this.state = {
             details: false,
            
        }
    }
    
   gitDetails=()=>{
      this.setState({
        details:!this.state.details
      })
   } 
    
   
    
    render() {
        console.log(this.props.comments)
        return (

<div>
<div className="card-center" id="wrapper">
<Card className="box2" style={{ width: '40rem'  }}>
       {/* <Card.Img  variant="top" src=""/> */}

    {!this.state.details ?       
               <div>
               <Card.Title className="userNamepost"> <div className="namepost ">Name: </div> {this.props.name} </Card.Title> 
               <Card.Title className="userName">  <img  className="img-card" src={this.props.photo}/> </Card.Title> 
               <Card.Title className="userNamepost"> <div className="namepost ">Origin: </div>{this.props.type} </Card.Title> 
               <Card.Title className="userNamepost"> <div className="namepost ">Description: </div> {this.props.description}</Card.Title> 
               <hr/>
           

               {(this.props.user.id===this.props.profiles.id) ?  <div>   <Card.Title className="userName"> 
                <button className="main-btnn" onClick={()=>{this.props.deletePost(this.props.id)}}>Delete</button>
                <button className="main-btnn" onClick={()=>{this.props.editView(this.props.id)}}>Edit</button> 
                </Card.Title>  </div> : null}
              
                </div> :  <PostRow post={this.props}  profiles={this.props.profiles} ></PostRow> } 
                <Card.Title className="center1"> 
                <button className="main-btnn" onClick={this.gitDetails}>Comments</button> 
   
   
     </Card.Title>
    </Card>
    </div>
    </div>        
        )
    }
}


// <div className="card-center" id="wrapper">
       
// <Card className="box2" style={{ width: '30rem'  }}>
//         <Card.Img  variant="top" src=""/>

//         <Card.Body>
//         <Card.Title className="userName">  {this.props.name}</Card.Title>
               
//         <Card.Title className="userName">  <img src={this.props.photo}/> </Card.Title>
      
//          <hr/>
//          <Card.Title className="userName"> 
//         <button className="main-btnn" onClick={()=>{this.props.deletePost(this.props.id)}}>Delete</button>
//         <button className="main-btnn" onClick={()=>{this.props.editView(this.props.id)}}>Edit</button>
//         <button className="main-btnn" >Details</button>
        
            
//             </Card.Title>

// <<<<<<< HEAD
    
//     </Card.Body> 


  
//         </Card>


      

      

        


// </div>
// =======
