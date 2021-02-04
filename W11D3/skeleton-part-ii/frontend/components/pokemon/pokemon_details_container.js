import { connect } from 'react-redux';
import { requestPokemon } from './../../actions/pokemon_actions';
import PokemonDetails from './pokemon_details';


const mapStateToProps = (state, ownProps) => ({
    pokemon: state.entities.pokemon[ownProps.match.params.id]
})

const mapDispatchToProps = (dispatch, ownProps) => ({
    requestPokemon: () => dispatch(requestPokemon(ownProps.match.params.id))
})

export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetails)