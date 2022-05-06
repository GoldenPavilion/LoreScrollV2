import React from 'react';
import { connect } from 'react-redux';
import updateLoginForm from '../actions/main/login.js';

const Login = () => {
    return(
        <div className="login">
            <form className="login-form">
                <div className="form-group">
                    <label>Username: </label>
                    <input 
                        className="form-control"
                        type="text"
                        name="username"
                    />
                </div>
                <div className="form-group">
                    <label>Password:</label>
                    <input 
                        className="form-control"
                        type="password"
                        name="password"
                    />
                </div>
                <button
                    type="submit"
                    value="Login"
                />
            </form>
        </div>
    )
}

const mapStateToProps = state => {
    return {
        login: state.loginReducer
    }
}

export default connect(mapStateToProps, { updateLoginForm })(Login);