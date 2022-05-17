import React from 'react';
import { connect } from 'react-redux';
import { logout } from '../actions/currentUser';

const Logout = () => {
    return(
        <div className="logout">

        </div>
    )
}

export default connect(null, { logout })(Logout);