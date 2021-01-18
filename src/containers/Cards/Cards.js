import React, {Component} from 'react'
import classes from './Cards.css'
import Card from '../../components/Card/Card'
import NextCardsButton from '../../components/NextCardsButton/NextCardsButton'
import AddCardButton from '../../components/AddCardButton/AddCardButton'

import axios from 'axios'

// import Server from '../../components/Server/Server'

class Cards extends Component {

    constructor() {
        super()
        this.state = {
            cards: [],
            isLoaded: false,
            isRefresh: false
        }
    }

    componentDidMount() {
        axios.get('http://w-cards-server.local/wp-json/wp/v2/posts')
            .then(res => {
                    this.setState({
                        cards: res.data,
                        isLoaded: true
                    })
                }
            )
            .catch(error => console.log(error))
    }

    shuffleCards() {
        let cards = this.state.cards
        cards.sort(() => Math.random() - 0.5)
        return cards.slice(0, 6)
        // return cards.slice(0, 1)
    }

    onNextCards = () => {
        this.setState({
            isRefresh: !this.state.isRefresh
        })
    }

    onAddCard = () => {
        console.log('add card')
    }

    renderCards() {
      let cards = this.shuffleCards()
        return (cards.map((card, index) => {
                return (
                    <Card
                        key={index}
                        id={card.id}
                        text_orig={card.acf.text_original}
                        text_trans={card.acf.text_translation}
                        isRefresh={this.state.isRefresh}
                    />
                )
            })
        )
    }


    render() {
        return (
            <div className={classes.Cards}>
                <AddCardButton addCard={this.onAddCard}/>
                <div className={classes.Cards_content}>
                    {this.renderCards()}
                </div>
                <div className={classes.Cards_next}>
                    <NextCardsButton
                        nextCards={this.onNextCards}
                    />
                </div>
            </div>
        )
    }
}

export default Cards
