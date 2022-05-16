import React from 'react';
import {requireNativeComponent, NativeModules} from 'react-native';

const BarChart = requireNativeComponent('BarView');

console.log(NativeModules);

export default Chart = (props) => {
  return <BarChart />;
};
