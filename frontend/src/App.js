import './App.css';

// COMPONENTS
import Main from './components/main/Main.js';
import Login from './components/main/Login.js';
import Logout from './components/main/Logout.js;'

// ACTIONS
import { connect } from 'react-redux';
import { getCurrentUser } from '../actions/currentUser';

import { BrowserRouter as Router, Routes, Route} from 'react-router-dom'; 

function App() {

  componentDidMount() {
    this.props.getCurrentUser()
  }

  return (
    <Router>
      <div className="App">
        <Routes>
          <Route exact path="/" element={<Main />} />
          <Route exact path="/login" element={<Login />} />
          <Route exact path="/logout" element={<Logout />} />
        </Routes>
      </div>
    </Router>
  );
}

export default connect(null, { getCurrentUser })(App);
