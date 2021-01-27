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
            <div>    
                <h1>It works!</h1>
                {<div className="tab">
                    <h1>{prop[0].title}</h1>
                    <body>
                        {prop[0].content}
                    </body>
                </div>}
            </div>
        )
    }
}

export default Tabs;