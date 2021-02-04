import React from 'react'

class PokemonDetails extends React.Component{
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.requestPokemon(this.props.match.params.id)
  }

  render(){
    const { pokemon } = this.props;
    if (pokemon === undefined) return null;

    return(
      <div>
        {this.props.pokemon.name}
        <img src={this.props.pokemon.imageUrl} />
      </div>
    )
  }
}

export default PokemonDetails;