#pragma once

#include "ofMain.h"
#include "digiSoundPlayer.h"
#include "ofxiPhone.h"
#include "ofxiPhoneExtras.h"
#include "ofxCocosDenshion.h"
//#include "ofxOpenALSoundPlayer.h"

class ofApp : public ofxiPhoneApp {
	
public:
	void setup();
	void update();
	void draw();
	void exit();
	
	void touchDown(ofTouchEventArgs &touch);
	void touchMoved(ofTouchEventArgs &touch);
	void touchUp(ofTouchEventArgs &touch);
	void touchDoubleTap(ofTouchEventArgs &touch);
	void touchCancelled(ofTouchEventArgs &touch);

	void lostFocus();
	void gotFocus();
	void gotMemoryWarning();
	void deviceOrientationChanged(int newOrientation);
    
    ofxCocosDenshion player1;
    ofxCocosDenshion player2;

};


