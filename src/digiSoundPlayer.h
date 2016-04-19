//
//  digiSoundPlayer.hpp
//  emptyExample
//
//  Created by Oscar Rodrigues on 16/04/16.
//
//

#pragma once

#include "ofMain.h"

class digiSoundPlayer : public ofBaseSoundPlayer {
    
public:
    
    digiSoundPlayer();
    ~digiSoundPlayer();
    
    bool loadSound(string fileName, bool stream = false);
    void unloadSound();
    void play();
    void stop();
    
    void setVolume(float vol);
    void setPan(float vol);
    void setSpeed(float spd);
    void setPaused(bool bP);
    void setLoop(bool bLp);
    void setMultiPlay(bool bMp);
    void setPosition(float pct);
    void setPositionMS(int ms);
    
    float getPosition();
    int getPositionMS();
    bool getIsPlaying();
    float getSpeed();
    float getPan();
    bool isLoaded();
    float getVolume();
    
protected:
    
    void * soundPlayer;
    
};