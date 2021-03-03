import axios from "axios";

let getDataFromServer = () =>{

    // axios.get('http://w-cards-server.local/wp-json/wp/v2/posts')
    //     .then(res => {
    //             return {
    //                 cards: res.data,
    //                 isLoaded: true
    //             }
    //         }
    //     )
    //     .catch(error => console.log(error))

}
getDataFromServer()

const initialState = {
    allCards: [
        {
            id: 1,
            originalWord: 'vinigar',
            originalText: '',
            translation_1: 'уксус',
            translation_2: '',
            categoryId: 1,
            userId: 1
        },
        {
            id: 2,
            originalWord: 'injury',
            originalText: 'all escaped without serious injury',
            translation_1: 'травма',
            translation_2: 'повреждение',
            categoryId: 1,
            userId: 1
        },
        {
            id: 3,
            originalWord: 'jellyfish',
            originalText: '',
            translation_1: 'медуза',
            translation_2: '',
            categoryId: 1,
            userId: 1
        },
        {
            id: 4,
            originalWord: 'respected',
            original_text: 'respected sir',
            translation_1: 'уважаемый',
            translation_2: 'почитаемый',
            category_id: 1,
            user_id: 1
        },
        {
            id: 5,
            originalWord: 'spectacular',
            originalText: 'spectacular mountain scenery',
            translation_1: 'захватывающий',
            translation_2: 'эффектный',
            categoryId: 1,
            userId: 1
        },
        {
            id: 6,
            originalWord: 'exciting',
            originalText: 'we have exciting opportunities to offer',
            translation_1: 'захватывающий',
            translation_2: 'волнующий',
            categoryId: 1,
            userId: 1
        },
        {
            id: 7,
            originalWord: 'actually',
            originalText: 'actually that\'s what I thought',
            translation_1: 'на самом деле',
            translation_2: 'фактически',
            categoryId: 1,
            userId: 1
        },
        {
            id: 8,
            originalWord: 'offense',
            originalText: 'neither offense violates any federal law',
            translation_1: 'правонарушение',
            translation_2: 'оскорбление',
            categoryId: 1,
            userId: 1
        },
        {
            id: 9,
            originalWord: 'scenery',
            originalText: 'we paused briefly to look at the scenery',
            translation_1: 'пейзаж',
            translation_2: '',
            categoryId: 1,
            userId: 1
        },
        {
            id: 10,
            originalWord: 'reveal',
            originalText: 'Brenda was forced to reveal Robbie\'s whereabouts',
            translation_1: 'показывать',
            translation_2: 'раскрывать',
            categoryId: 1,
            userId: 1
        },
        {
            id: 10,
            originalWord: 'instructive',
            originalText: 'instructive story',
            translation_1: 'нравоучительный',
            translation_2: '',
            categoryId: 1,
            userId: 1
        }
    ],
    visibleCards: [],
}


export default function reducerCards(state = initialState, action) {

    let sliceCards = () =>{
        let allCards = initialState.allCards
        allCards.sort(() => Math.random() - 0.5)
        return allCards.slice(0, 6)
    }

    if (action.type === 'next') {
        // nothing to do
    }

    return {
        visibleCards: sliceCards(),
    }
}