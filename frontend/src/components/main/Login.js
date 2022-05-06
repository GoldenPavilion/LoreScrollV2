import React from 'react';

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

export default Login;