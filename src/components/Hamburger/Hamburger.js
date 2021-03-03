import React from 'react'
import classes from './Hamburger.css'

const Hamburger = (props) => {

    let icon_classes = ['lnr', 'lnr-menu']
    icon_classes.push(classes.Hamburger_icon)

    return (
        <div className={classes.Hamburger}
             onClick={props.onShowMenu}
        >
            <i className={icon_classes.join(' ')}></i>

        </div>
    )
}

export default Hamburger