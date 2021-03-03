const initialState = {
    displayAuthForm: false,
    testAuthField: 'Authentication container'
}

export default function reducerAuth(state = initialState, action) {



    if (action.type === 'showAuth') {
        return {
            displayAuthForm: true
        }
    }

    if (action.type === 'testAuthAction') {
        return {
            testAuthField: state.testAuthField + '!'
        }
    }

    return state

}