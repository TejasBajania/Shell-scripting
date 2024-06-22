#!/bin/bash
cleanup(){
echo "Script interrupted. Performing cleanup" 
exit 1
}
trap cleanup SIGINT
echo "Running"
sleep 10
echo "Run completed"


