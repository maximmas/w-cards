import React, {Component} from 'react'
import classes from './App.css'
import Cards from './containers/Cards/Cards'
//import Mmenu from 'mmenu-js'
import Header from './containers/Header/Header'
import Footer from './containers/Footer/Footer'

class App extends Component {

    render(){
        return (
            <main className={classes.App}>
                <Header/>
                <Cards/>
                <Footer/>
            </main>
        )
    }

}

export default App