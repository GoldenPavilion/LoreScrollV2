import React from 'react';
import { connect } from 'react-redux';
import { updateLoginForm } from '../../actions/main/login.js';
import { login } from '../../actions/main/currentUser.js';

const Login = ({ loginForm, updateLoginForm, login }) => {
    
    const handleOnChange = event => {
        const { name, value } = event.target
        const updatedData = {
            ...loginForm,
            [name]: value
        }
        updateLoginForm(updatedData)
    }

    return(
        <div className="login">
            <form className="login-form">
                <div className="form-group">
                    <label>Username: </label>
                    <input 
                        className="form-control"
                        type="text"
                        name="username"
                        value={loginForm.username}
                        onChange={handleOnChange}
                    />
                </div>
                <div className="form-group">
                    <label>Password:</label>
                    <input 
                        className="form-control"
                        type="password"
                        name="password"
                        value={loginForm.password}
                        onChange={handleOnChange}
                    />
                </div>
                <button
                    type="submit"
                    value="Login"
                >Login</button>
            </form>
        </div>
    )
}

const mapStateToProps = state => {
    return {
        loginForm: state.loginReducer
    }
}

export default connect(mapStateToProps, { updateLoginForm, login })(Login);