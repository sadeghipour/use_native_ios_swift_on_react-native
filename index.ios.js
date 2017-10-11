/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
    Dimensions
} from 'react-native';

const YoutubeComponent = require('./YoutubeComponent.ios.js');
const {width,height} = Dimensions.get('window');
//import {YoutubeComponent} from 'YoutubeComponent.ios';

export default class MySwiftDemo extends Component {


    calcPercent(percent,dim){

        return (dim * percent) / 100
    }

  render() {

    return (
      <View>
          <View style={{width:this.calcPercent(50,width),height:this.calcPercent(20,height)}}>
              <YoutubeComponent showVideo={{videoId:"r0RGG1uFnQc",width:this.calcPercent(50,width),height:this.calcPercent(20,height)}} />
          </View>

      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
  view: {
    margin: 10,
    width: 100
  }
});

AppRegistry.registerComponent('MySwiftDemo', () => MySwiftDemo);
