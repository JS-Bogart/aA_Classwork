import React from 'react';

class Clock extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            time: new Date(),
        }
        this.tick = this.tick.bind(this);
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
                <h1>Current Time</h1>
                <h2>{this.state.time.getHours()} : {this.state.time.getMinutes()} : {this.state.time.getSeconds()}</h2>
            </>
        )
    }



}



export default Clock;