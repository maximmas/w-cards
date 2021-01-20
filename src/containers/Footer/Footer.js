import React, {Component} from 'react'
import classes from './Footer.css'
import Hamburger from "../../components/Hamburger/Hamburger";
import NextCardsButton from "../../components/NextCardsButton/NextCardsButton";

class Footer extends Component {

    constructor() {
        super()
        this.state = {}
    }

    render() {
        return (
            <div className={classes.Footer}>
                {/*<Hamburger addCard={this.onAddCard}/>*/}
                This is Footer

            </div>
        )
    }


}

export default Footer