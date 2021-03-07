import React, { Component } from 'react'
export default class PostIndex extends Component {

   
    render() {
        return (
            
                 <div >{this.props.name}
                <div> <img className="image-width" src={this.props.photo}/>
                  {this.props.comments.content}   </div>
                  
                    <hr />
                </div>
        
        )
    }
}