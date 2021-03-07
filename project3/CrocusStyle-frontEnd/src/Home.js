import React, { Component } from 'react'
import Register from './user/Register';
import Login from './user/Login';
import { BrowserRouter as Router, Route, Link } from "react-router-dom";
import {Image,Container,Row,Col} from "react-bootstrap";
import Profile from './user/Profile';
import Post from './Post';
import PostNew from './PostNew';
import Carousel from 'react-bootstrap/Carousel'
import bk3 from './media/bk3.webp'
import crocus from './media/crocus.png'
export default class Home extends Component {
    

     
    render() {
        return (
<div>

                    
            <div class="home">
                       <header     
                       style={{ 
                        // backgroundImage: `url${bk3}`
                        backgroundImage: URL("https://cdn.webshopapp.com/shops/54005/files/175175315/image.jpg")
                      }}>
                      <h1 className="namelogoheader">CROCUS</h1>
                       </header>

                       <section>
                          <nav className="nav1">
                              <ul >
                                  <li></li>
                                 
                              </ul>
                               
                          </nav>

                          <nav className="nav2">
                              <ul >
                                  <li><h2 className="namelogo3"><span className="namelogo4">Discover something new around every corner at the World 
                                      of Plants.</span><span> Venture into this realm of lush greenery and learn all 
                                      about the spectacular myriad of tropical </span>
                                      plants and the systems these plants support</h2></li>
                                 
                              </ul>
                               
                          </nav>
                          


                          <article style={{ 
                        backgroundImage: `url(${process.env.PUBLIC_URL + 'media/bk2.webp'})`,
                      }}>
                          
                            <h1 className="namelogo">The largest plants database </h1>
                            <h1 className="namelogo">_______________in______________</h1>
                            <h1 className="namelogo">KSA</h1>
                           </article>
                       </section>

               

                       {/* <div className="slideshow-containers">
                   <Container >
                    <Carousel>
            <Carousel.Item interval={1000}>
                <img
                className="d-block w-100"
                src="/media/tst2.jpg"
                alt="First slide"
                />
                <Carousel.Caption>
                <h3>First slide label</h3>
                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item interval={500}>
                <img
                className="d-block w-100"
                src="/media/flowers.jpg"
                alt="Second slide"
                
                />
                <Carousel.Caption>
                <h3>Second slide label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item>
                <img
                className="d-block w-100"
                src="/media/flowerbird.jpg"
                alt="Third slide"
                />
                <Carousel.Caption>
                <h3>Third slide label</h3>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </Carousel.Caption>
            </Carousel.Item>
            </Carousel>

     
            </Container>
               
            </div> */}


</div>
      

                 <div className="footer1">
<div className="container-footer">
            <p className="footer__title">CROCUS</p>
            <div className="footer-contact">
            <ul>
				<li><i className="fas fa-phone-square-alt"></i> CROUCS@crocus.com</li>
				<li><i className="fas fa-envelope"></i>C:Challengers</li>
                <img src={crocus} width="50" height="50"/>


				<li></li>
			</ul>
            </div>
            </div>
</div> 






</div>
        )
    }
}
