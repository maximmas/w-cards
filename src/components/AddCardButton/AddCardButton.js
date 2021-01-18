import React from 'react'
import classes from './AddCardButton.css'

const AddCardButton = (props) => {

    let icon_classes = ['lnr', 'lnr-plus-circle']
    icon_classes.push(classes.AddCardButton_icon)
    console.log(icon_classes)
    return (
        <div className={classes.AddCardButton_container}>
            <a className={classes.AddCardButton}
               onClick={props.addCard}
            >
                <span className={icon_classes.join(' ')}></span>
            </a>
        </div>
    )
}

export default AddCardButton