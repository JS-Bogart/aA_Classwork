import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMON } from './../actions/pokemon_actions';
import merge from 'lodash/merge';

const pokemonReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type){
  case RECEIVE_ALL_POKEMON:
    return Object.assign({}, action.pokemon, state);
  case RECEIVE_POKEMON:
      const newPokemon = { [action.pokemon.id]: action.pokemon };
      return merge({}, state, newPokemon);
  default:
    return state;
  }
}
  
export default pokemonReducer;
