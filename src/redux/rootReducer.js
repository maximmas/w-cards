import {combineReducers} from "redux"

import reducerCards from "./reducers/reducerCards"
import reducerHeader from "./reducers/reducerHeader"
import reducerAuth from "./reducers/reducerAuth"

export default combineReducers({
    reducerHeader, reducerCards, reducerAuth
})