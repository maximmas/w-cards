import React from 'react'
import classes from './Menu.css'
import MenuItem from "../../components/MenuItem/MenuItem"
import MenuCloseButton from "../../components/MenuCloseButton/MenuCloseButton"

const menuItems = [
    {
        'name': 'Login',
        'link': 'login'
    },
    {
        'name': 'Add Card',
        'link': 'add'
    },
    {
        'name': 'Edit Card',
        'link': 'edit'
    }
]

const Menu = (props) => {

    let menuClasses = []
    menuClasses.push(classes.Menu)

    if (props.showMenu){
        menuClasses.push(classes.opened)
    }

    let onCloseMenu = () => {
        console.log('close menu')
        menuClasses.pop(classes.opened)
    }

    let renderMenuItems = () => {
        return (menuItems.map((item, index) => {
                return (
                    <MenuItem
                        key={index}
                        name={item.name}
                        link={item.link}
                    />
                )
            })
        )
    }


    return (
        <div className={menuClasses.join(' ')}>
            <MenuCloseButton onCloseMenu={onCloseMenu}/>
            <div className={classes.MenuItems}>
                {renderMenuItems()}
            </div>
        </div>
    )


}

export default Menu