import React, { Component } from 'react'
import axios from "axios";
import PostIndex from './PostIndex';
import { CardGroup, Card, Img, Body,Title } from 'react-bootstrap'

export default class PostWithoutLogin extends Component {
    constructor(props){
        super(props);
        this.state = {
            posts: [],
            isEdit: false,
            clickedPostId : ''
        }
    }
    componentDidMount(){
        this.loadPost();
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

    render() {
        return (
          
                <div>
                      <div  className="card-center" id="wrapper">
                <div className="home">
            
                <Card className="box3" style={{ width: '30rem'  }}>
                    <Card.Img  variant="top" src=""/>
                  
                    <Card.Body>
                   
                    {this.state.posts.map((post, index) =>
                    <div  key={index}>
                        <Card.Title>Card Title</Card.Title>
                    <PostIndex {... post} />
                    
                    </div>  )} 
                    </Card.Body> 
                    </Card>

                    </div>
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
