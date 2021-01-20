import React from 'react'
import classes from './Hamburger.css'

const Hamburger = (props) => {

    let icon_classes = ['lnr', 'lnr-menu']
    icon_classes.push(classes.Hamburger_icon)

    return (
        <div className={classes.Hamburger}
             onClick={props.onShowMenu}
        >
            <span className={icon_classes.join(' ')}></span>

        </div>
    )
}

export default Hamburger