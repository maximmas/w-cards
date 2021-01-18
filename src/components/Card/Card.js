import React, {Component} from 'react'
import classes from './Card.css'

export default class Card extends Component {

    constructor(props) {
        super(props)
        this.state = {
            isClicked: false,
            text: this.props.text_orig,
            isRefresh: this.props.isRefresh
        }
    }

    componentWillReceiveProps() {
        if ( this.state.isRefresh !== this.props.isRefresh){
            this.setState({
                isRefresh: this.props.isRefresh,
                text: this.props.text_orig,
                isClicked: false,
            })
        }
    }

    onCardClickHandler(event) {
        let text = (this.state.isClicked) ? this.props.text_orig : this.props.text_trans
        this.setState({
            isClicked: !this.state.isClicked,
            text: text
        })
    }

    render() {
        let cls = [classes.Card]
        if (this.state.isClicked) {
            cls.push(classes['clicked'])
        }
        return (
            <div
                className={cls.join(' ')}
                onClick={() => this.onCardClickHandler()}
            >
                {this.state.text}
            </div>
        )
    }
}