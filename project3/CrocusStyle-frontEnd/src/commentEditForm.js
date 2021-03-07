// import React, { Component } from 'react'

// export default class commentEditForm extends Component {
    
//     constructor(props){
//         super(props);
//         this.state ={
//             newComment : props.comment
//         }
//     }

//     handleChange= (event) =>{
//         const attributeToChange = event.target.content
//         const newValue = event.target.value

//         const updatedComment = {...this.state.newComment}
//         updatedComment[attributeToChange] = newValue
//         console.log(updatedComment)
//         this.setState({
//             newComment: updatedComment
//         })

//     }

//     handleSubmit =(event) =>{
//         event.preventDefault()

//         this.props.editComment(this.state.newComment);
//     }


    
//     render() {
//         return (
//             <div>
//             <form onSubmit={this.handleSubmit}>
//                 <div>
//                     <label>Comment</label>
//                     <input
//                     name="content"
//                     type="text"
//                     value={this.state.newComment.content}
//                     onChange={this.handleChange}></input>
//                 </div>
    
//                 <div>
//                     <input type="submit" value="Edit Comment"></input>
//                 </div>
//             </form>
//         </div>
//         )
//     }
// }
