import { Route, Switch } from "react-router-dom"
import React from 'react'
import PokemonIndexContainer from './../components/pokemon/pokemon_index_container';
import PokemonDetailsContainer from './../components/pokemon/pokemon_details_container';


const App = () => (
    <Switch>
        <Route path="/pokemon/:id" component={PokemonDetailsContainer} />
        <Route path="/" component={PokemonIndexContainer} />
    </Switch>
)

export default App;