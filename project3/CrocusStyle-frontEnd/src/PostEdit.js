import React, { Component } from 'react'



export default class PostEdit extends Component {
    constructor(props){
        super(props);
        this.state ={
            newPost : props.post
        }
    }


    handleChange= (event) =>{
        const attributeToChange = event.target.name
        const newValue = event.target.value
        const updatedPost = {...this.state.newPost}
        updatedPost[attributeToChange] = newValue
        console.log(updatedPost)
        this.setState({
            newPost: updatedPost
        })
    }
    handleSubmit =(event) =>{
        event.preventDefault()
        this.props.editPost(this.state.newPost);
    }
    render() {
        return (
            <div>
                <form onSubmit={this.handleSubmit}>
                    <div>
                        <label>Name</label>
                        <input className="main-btnn2"
                        name="name"
                        type="text"
                        value={this.state.newPost.name}
                        onChange={this.handleChange}></input>
                    </div>
                    <div>
                        <label>Type</label>
                        <input className="main-btnn2"
                        name="type"
                        type="text"
                        value={this.state.newPost.type}
                        onChange={this.handleChange}></input>
                    </div>
                    <div>
                        <label>Description</label>
                        <input className="main-btnn2"
                        name="description"
                        type="text"
                        value={this.state.newPost.description}
                        onChange={this.handleChange}></input>
                    </div>
                    <div>
                        <label>Photo</label>
                        <input className="main-btnn2"
                         src={this.props.photo}
                        name="photo"
                        type="text"
                        value={this.state.newPost.photo}
                        onChange={this.handleChange}></input>
                    </div>
                    <div>
                        <input className="main-btnn" type="submit" value="Edit Post"></input>
                    </div>
                </form>
            </div>
        )
    }
}