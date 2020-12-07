import React, { Component } from 'react'
import axios from 'axios'

//https://www.youtube.com/watch?v=fFNXWinbgro&ab_channel=TraversyMedia

// 28:44

export class Server extends Component {

    state = {
        cards: [],
        isLoaded: false
    }

    componentDidMount(){
        axios.get('http://w-cards-server.local/wp-json/wp/v2/posts')
        .then(res=>this.setState({
            cards: res.data,
            isLoaded: true
        }))
        .catch(err=>console.log(err))
    }

    render() {
        if(this.state.cards.length){
            let a = this.state.cards[0]
            let b = a.acf.text_original
            console.log('b',b)
        }
        
        const { cards, isLoaded } = this.state
        if(isLoaded){
            return (
                <div>
                    {
                    cards.map((card,index) => (
                        <h4 key={index} >
                            {card.acf.text_original}
                             {card.acf.text_translation}
                             </h4>
                    ))
                    }
                </div>
            )
        }
        return <h3>Loading...</h3>
    }
    
}

export default Server
