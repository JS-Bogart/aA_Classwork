import React from 'react';

class Clock extends React.Component {
    constructor(props) {
        super(props);
        this.state = new Date()
    }

    componentDidMount() {
       let time = setInterval(tick, 1000);
    }

    componentWillUnmount() {
        clearInterval(time);
    }

    tick() {
        this.setState(new Date())
    }

    render() {
        return (
            <>
                <h1>Clock</h1>
                
            </>
        )
    }



}



export default Clock;