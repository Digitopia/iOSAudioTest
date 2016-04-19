
#include "digiSoundPlayer.h"
#import "AVSoundPlayer.h"

digiSoundPlayer::digiSoundPlayer() {
    soundPlayer = NULL;
}

digiSoundPlayer::~digiSoundPlayer() {
    unloadSound();
}

bool digiSoundPlayer::loadSound(string fileName, bool stream) {
    if(soundPlayer != NULL) {
        unloadSound();
    }
    
    string filePath = ofToDataPath(fileName);
    soundPlayer = [[AVSoundPlayer alloc] init];
    BOOL bOk = [(AVSoundPlayer *)soundPlayer loadWithPath:[NSString stringWithUTF8String:filePath.c_str()]];
    
    return bOk;
}

void digiSoundPlayer::unloadSound() {
    if(soundPlayer != NULL) {
        [(AVSoundPlayer *)soundPlayer unloadSound];
        [(AVSoundPlayer *)soundPlayer release];
        soundPlayer = NULL;
    }
}

void digiSoundPlayer::play() {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer play];
}

void digiSoundPlayer::stop() {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer stop];
}

void digiSoundPlayer::setVolume(float value) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer volume:value];
}

void digiSoundPlayer::setPan(float value) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer pan:value];
}

void digiSoundPlayer::setSpeed(float value) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer speed:value];
}

void digiSoundPlayer::setPaused(bool bPause) {
    if(soundPlayer == NULL) {
        return;
    }
    if(bPause) {
        [(AVSoundPlayer *)soundPlayer pause];
    } else {
        [(AVSoundPlayer *)soundPlayer play];
    }
}

void digiSoundPlayer::setLoop(bool bLoop) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer loop:bLoop];
}

void digiSoundPlayer::setMultiPlay(bool bMultiPlay) {
    ofLog(OF_LOG_NOTICE, "digiSoundPlayer::setMultiPlay() - multi play is not currently supported.");
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer multiPlay:bMultiPlay];
}

void digiSoundPlayer::setPosition(float position) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer position:position];
}

void digiSoundPlayer::setPositionMS(int positionMS) {
    if(soundPlayer == NULL) {
        return;
    }
    [(AVSoundPlayer *)soundPlayer positionMs:positionMS];
}

float digiSoundPlayer::getPosition() {
    if(soundPlayer == NULL) {
        return 0;
    }
    return [(AVSoundPlayer *)soundPlayer position];
}

int digiSoundPlayer::getPositionMS() {
    if(soundPlayer == NULL) {
        return 0;
    }
    return [(AVSoundPlayer *)soundPlayer positionMs];
}

bool digiSoundPlayer::getIsPlaying() {
    if(soundPlayer == NULL) {
        return false;
    }
    return [(AVSoundPlayer *)soundPlayer isPlaying];
}

float digiSoundPlayer::getSpeed() {
    if(soundPlayer == NULL) {
        return 0;
    }
    return [(AVSoundPlayer *)soundPlayer speed];
}

float digiSoundPlayer::getPan() {
    if(soundPlayer == NULL) {
        return 0;
    }
    return [(AVSoundPlayer *)soundPlayer pan];
}

bool digiSoundPlayer::isLoaded() {
    if(soundPlayer == NULL) {
        return false;
    }
    return [(AVSoundPlayer *)soundPlayer isLoaded];
}

float digiSoundPlayer::getVolume() {
    if(soundPlayer == NULL) {
        return false;
    }
    return [(AVSoundPlayer *)soundPlayer volume];
}