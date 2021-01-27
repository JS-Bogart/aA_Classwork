import React from 'react';
import Clock from './clock';
import Tabs from './tabs';

class Roots extends React.Component {
    constructor(props) {
        super(props);
        this.getTabs = new Tabs([{'one': 'I am the first'}, {'two': 'I am the second'}, {'three': 'I am the third'}])

    }


    render (){
        return(
            <div>
                <Clock/>
                <this.getTabs/>
            </div>
        )
    }
}

export default Roots;