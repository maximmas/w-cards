import React, {Component} from 'react'
import classes from './Header.css'
import Logo from './../../components/Logo/Logo'
import Hamburger from "../../components/Hamburger/Hamburger"

class Header extends Component {

    constructor() {
        super()
        this.state = {}
    }

    onShowMenu(){
        console.log('menu!')
    }

    render() {
        return (
            <div className={classes.Header}>
                <Logo/>
                <Hamburger onShowMenu={this.onShowMenu}/>
            </div>
        )
    }

}

export default Header