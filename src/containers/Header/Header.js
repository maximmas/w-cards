import React, {Component} from 'react'
import classes from './Header.css'
import Logo from './../../components/Logo/Logo'
import Hamburger from "../../components/Hamburger/Hamburger"
import LoginButton from "../../components/LoginButton/LoginButton"

class Header extends Component {

    constructor() {
        super()
        this.state = {
            showMenu:  false
        }
    }

    onShowMenu = () => {
        this.setState({
            showMenu: true
        })
    }

    onCloseMenu =() => {
        this.setState({
            showMenu: false
        })
    }

    render() {
        return (
            <div className={classes.Header}>
                <Logo/>
                {/*<Hamburger*/}
                {/*    onShowMenu={this.onShowMenu}*/}
                {/*/>*/}
                <LoginButton/>
            </div>
        )
    }

}

export default Header