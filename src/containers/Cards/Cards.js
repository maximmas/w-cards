import React, {Component} from 'react'
import classes from './Cards.css'
import Card from '../../components/Card/Card'
import axios from 'axios'

// import Server from '../../components/Server/Server'

class Cards extends Component {

    constructor() {
        super()
        this.state = {
            cards: [],
            isLoaded: false
        }
    }

    componentDidMount() {
        axios.get('http://w-cards-server.local/wp-json/wp/v2/posts')
            .then(res => {
                this.setState({
                        cards: res.data,
                        isLoaded: true
                    })
                // console.log('res',res.data)
                }
            )
            .catch(error => console.log(error))
    }

shuffleCards()
{
    let cards = this.state.cards
    cards.sort(() => Math.random() - 0.5)
    return cards.slice(0, 4)
}

renderCards()
{
    let cards = this.shuffleCards()
    return (cards.map((card, index) => {
            // console.log('card',card)
            return (
                <Card
                    key={index}
                    id={card.id}
                    text_orig={card.acf.text_original}
                    text_trans={card.acf.text_translation}
                    text={card.text_orig}
                />
            )
        })
    )
}

render()
{
    return (
        <div className={classes.Cards}>
            {this.renderCards()}
        </div>
    )
}
}


export default Cards
