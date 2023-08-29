import React from "react";

function handleSubmit(e) {
  e.preventDefault();
  api.post("add_song", {
      song_name: username,
      artist: password,
    })
    .then((response) => {
      if (response.data.success) {
        setMessage({flavor: "success", text: "Log-In Successful!"});
      } else {
        setMessage({flavor: "danger", text: response.data.message});
      }
    }).catch(helpers.catchHandler);
}
function Test() {
  return <div>This is a component</div>;
}

export default Test;
