import React from 'react'
import classes from './MenuCloseButton.css'

const MenuCloseButton = (props) => {

    let icon_classes = ['lnr', 'lnr-cross-circle']
    icon_classes.push(classes.MenuCloseButton_icon)

    return (
        <div className={classes.MenuCloseButton}
             onClick={props.onCloseMenu}
        >
            <span className={icon_classes.join(' ')}></span>
        </div>
    )
}

export default MenuCloseButton