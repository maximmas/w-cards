import React, {Component} from 'react'
import classes from './App.css'
import Header from './containers/Header/Header'
import Footer from './containers/Footer/Footer'
import Content from "./containers/Content/Content"
import Menu from "./containers/Menu/Menu"

class App extends Component {
    render(){
        return (
            <main className={classes.App}>
                <Header/>
                <Content/>
                {/*<Menu/>*/}
                <Footer/>
            </main>
        )
    }
}
export default App