#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup(){	
	// register touch events
	//ofRegisterTouchEvents(this);
	
	// initialize the accelerometer
	//ofxAccelerometer.setup();
	
	//iPhoneAlerts will be sent to this.
	//ofxiPhoneAlerts.addListener(this);
	
	//If you want a landscape oreintation 
	//iPhoneSetOrientation(OFXIPHONE_ORIENTATION_LANDSCAPE_RIGHT);
	
	ofBackground(127,127,127);
    
    player1.setup();
    player2.setup();
    
    player1.addSoundEffect("switch_on.wav", 1);
    player1.loadAllAudio();
    
    player2.addSoundEffect("switch_off.wav", 1);
    player2.loadAllAudio();
    
    //player1.setSoundVolume(0.7f);
}

//--------------------------------------------------------------
void ofApp::update(){

}

//--------------------------------------------------------------
void ofApp::draw(){
    
    cout << ofGetFrameRate() << endl;
    ofDrawBitmapString(ofGetFrameRate(), 100, 100);
}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs &touch){
    if(touch.x < ofGetWidth()/2) {
        player1.playSound(0);
    } else {
        player2.playSound(0);
    }
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs& args){

}

