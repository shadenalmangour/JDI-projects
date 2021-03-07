import React, { Component } from 'react'

export default class Comments extends Component {

       render() {
        return (
            <div>
            <div>
           <div  className="pro-container2"> {this.props.content}</div> 
                {(this.props.user.id===this.props.profiles.id) ?  <div> 
                <button  className="main-btnn"  onClick={()=>{this.props.deleteComment(this.props.id)}}>Delete</button>
                 </div> : null}
                <hr />
            </div>
        </div>
        )
    }
}