import reactNative,{ requireNativeComponent } from 'react-native';
import {View} from 'react-native';
import PropTypes from 'prop-types';
import React from 'react';
// requireNativeComponent automatically resolves this to "SampleViewManager"

class YoutubeComponent extends React.Component{

    constructor(props){
        super(props);
    }

    componentDidMount(){

    }

    render(){
        return <YoutubeCmp style={{flex:1}} {...this.props} />;
    }
}


YoutubeComponent.propTypes = {
    props:(values)=>{
        reactNative.NativeModules.SampleViewManager.showVideo(values.showVideo.videoId,values.showVideo.width,values.showVideo.height);
    }
}



let YoutubeCmp = requireNativeComponent('SampleView', YoutubeComponent);



module.exports = YoutubeComponent;
