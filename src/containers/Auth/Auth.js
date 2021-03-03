import React, {Component} from 'react'
import classes from './Auth.css'
import {connect} from 'react-redux'

class Auth extends Component {

    // onAddCard = () => {
    //     console.log('add card')
    // }

    // renderCards() {
    //     return (this.props.cards.map((card, index) => {
    //             return (
    //                 <Card
    //                     key={index}
    //                     id={card.id}
    //                     originalWord={card.originalWord}
    //                     originalText={card.originalText}
    //                     translation_1={card.translation_1}
    //                     translation_2={card.translation_2}
    //                 />
    //             )
    //         })
    //     )
    // }

    render() {
        return (
            <div className={classes.Auth}>
                { this.props.content }
            </div>
        )
    }
}

function mapStateToProps(state) {
    return {
        content: state.reducerAuth.testAuthField
    }
}

function mapDispatchToProps(dispatch) {
    return {
        // nextCards: () => dispatch({type: 'next'}),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Auth)
