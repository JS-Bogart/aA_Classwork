import React from "react"
import { Link } from "react-router-dom"

class PokemonIndexItem extends React.Component {
    constructor(props){
        super(props)
    }

    render(){
        return(
            <li>
                <Link to={`/pokemon/${this.props.pokemon.id}`}>
                    {this.props.pokemon.name}
                    <img src={this.props.pokemon.imageUrl} />
                </Link>
            </li>
        )
    }
}

export default PokemonIndexItem;