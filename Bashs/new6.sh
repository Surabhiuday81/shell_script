#!/bin/bash


ENVIRONMENT="production"

deploy(){
	local VERSION="1.0.3"
	echo "Deploying the $VERSION in the $ENVIRONMENT"
}

deploy
