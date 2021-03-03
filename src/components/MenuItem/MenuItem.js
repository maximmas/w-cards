import React from 'react'
import classes from './MenuItem.css'

const MenuItem = (props) => {
    return (
        <a
            className={classes.MenuItem}
            // onClick={props.nextCards}
            href={props.link}
        >
            {props.name}
        </a>
    )
}

export default MenuItem