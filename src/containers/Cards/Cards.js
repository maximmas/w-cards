import React, {Component} from 'react'
import classes from './Cards.css'
import Card from '../../components/Card/Card'
import NextCardsButton from '../../components/NextCardsButton/NextCardsButton'
import {connect} from 'react-redux'

import axios from 'axios'

// import Server from '../../components/Server/Server'

class Cards extends Component {

    onAddCard = () => {
        console.log('add card')
    }

    renderCards() {
        return (this.props.cards.map((card, index) => {
                return (
                    <Card
                        key={index}
                        id={card.id}
                        originalWord={card.originalWord}
                        originalText={card.originalText}
                        translation_1={card.translation_1}
                        translation_2={card.translation_2}
                    />
                )
            })
        )
    }

    render() {
        return (
            <div className={classes.Cards}>
                <div className={classes.Cards_content}>
                    {this.renderCards()}
                    <NextCardsButton
                        nextCards={this.props.nextCards}
                    />
                </div>
            </div>
        )
    }
}

function mapStateToProps(state) {
    return {
        cards: state.reducerCards.visibleCards
    }
}

function mapDispatchToProps(dispatch) {
    return {
        nextCards: () => dispatch({type: 'next'}),
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(Cards)
