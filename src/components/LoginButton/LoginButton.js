import React from 'react'
import classes from './LoginButton.css'

const LoginButton = (props) => {

    let icon_classes = ['lnr', 'lnr-enter']
    icon_classes.push(classes.LoginButton_icon)

    return (
        <div className={classes.LoginButton}
             onClick={props.onShowMenu}
        >
            <span className={icon_classes.join(' ')}></span>

        </div>
    )
}

export default LoginButton