import React, { Component } from 'react'

export default class ProfileView extends Component {
    render() {
        return (
            <div>
                 {this.props.userEmail}
            </div>
        )
    }
}
