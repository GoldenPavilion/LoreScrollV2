export const setCurrentUser = user => {
    return {
        type: 'SET_CURRENT_USER',
        user: user
    }
};

export const clearCurrentUser = () => {
    return {
        type: 'CLEAR_CURRENT_USER'
    }
}

export const login = creds => {
    return dispatch => {
        return fetch("http://localhost:3001/api/login", {
            credentials: "include",
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(creds)
        })
    }
}

export const logout = () => {
    return dispatch => {
        return fetch("http://localhost:3001/api/logout", {
            credentials: "include",
            method: "DELETE"
        })
    }
}

export const getCurrentUser = creds => {
    return dispatch => {
        return fetch("http://localhost:3001/api/get_current_user", {
            credentials: "include",
            method: "GET",
            headers: {
                "Content-Type": "application/json"
            }
        })
        .then(resp = resp.json())
        .then(response => {
            if (response.error){
                alert(response.error)
            } else {
                dispatch(setCurrentUser(response.data))
            }
        })
        .catch(console.log)
    }
}