import React from 'react';
import BeatLoader from 'react-spinners/BeatLoader';

const override = {
  display: "block",
  margin: "auto"
};

const Loader = () => (
  <div className="loading">
    <BeatLoader
      cssOverride={override}
      size={20}
      margin={5}
      color={'#52ae4f'} />
  </div>
);

export default Loader;