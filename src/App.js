import React, {Component} from 'react'
import Cards from './containers/Cards/Cards'
import Mmenu from 'mmenu-js'

class App extends Component {

    // constructor(props) {
    //     super(props)
    //     // this.state = {
    //     //     isClicked: false,
    //     //     text: this.props.text_orig,
    //     // }
    // }

    componentDidMount() {
        // console.log('AAA')
        // document.addEventListener(
        //     "DOMContentLoaded", () => {
        //         new Mmenu( "#my-menu" );
        //     }
        // );
    }

    render(){
        return (
            <Cards/>
        )
    }

}

export default App