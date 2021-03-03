import React, {Component} from 'react'
import classes from './Content.css'
import Cards from "../Cards/Cards"
import Auth from "../Auth/Auth"


class Content extends Component {

    render() {
        return (
            <div className={classes.Content}>
                {/*<Cards/>*/}
                <Auth/>
            </div>
        )
    }
}

export default Content