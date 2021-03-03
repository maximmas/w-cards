import React, {Component} from 'react'
import classes from './Card.css'

export default class Card extends Component {

    constructor(props) {
        super(props)
        this.state = {
            showOriginal:true
        }
    }

    clickCard() {
        this.setState({
             showOriginal: !this.state.showOriginal
        })
    }

    render() {
        let cls = [classes.Card]
         if (!this.state.showOriginal) {
             cls.push(classes['clicked'])
         }
        let text = (this.state.showOriginal) ? this.props.originalWord : this.props.translation_1
        return (
            <div
                className={cls.join(' ')}
                onClick={()=>{this.clickCard()}}
            >
            {text}
            </div>
        )
    }
}
