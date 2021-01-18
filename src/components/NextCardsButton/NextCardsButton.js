import React from 'react'
import classes from './NextCardsButton.css'

const NextCardsButton = (props) => {
    return (
        <a
            className={classes.NextCardsButton}
            onClick={props.nextCards}
        >
            NEXT
        </a>
    )
}

export default NextCardsButton