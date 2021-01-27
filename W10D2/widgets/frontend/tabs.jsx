import React from "react"

class Tabs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            tabIndex: 0
        }
    }

    render() {
        return(
            <h1>It works!</h1>
        )
    }
}

export default Tabs;