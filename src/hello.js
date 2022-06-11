import React, { useEffect, useState } from "react";

const BACKEND_URL = process.env.REACT_APP_BACKEND_URL || "http://localhost"

async function getRequest () {
    const response = await fetch(BACKEND_URL).then(
        response => response.text())
    return response
}
function Hello(props) {
    const [state, setState] = useState('no response yet');
    useEffect(() => {
        getRequest()
          .then((out) => {
            setState(out)
          })
        }, [state]);

    return (
        <div>
            <a>Backend_says: {state}</a>
        </div>
    )
}

export default Hello;