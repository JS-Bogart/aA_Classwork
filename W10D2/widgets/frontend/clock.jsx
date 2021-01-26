import React from 'react';

class Clock extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            time: new Date(),
        }
        this.tick = this.tick.bind(this);
        this.interval = setInterval(this.tick, 1000);
    }

    componentDidMount() {
       this.interval = setInterval(this.tick, 1000);
    }

    componentWillUnmount() {
        clearInterval(this.interval);
    }

    tick() {
        this.setState({time: new Date()});
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