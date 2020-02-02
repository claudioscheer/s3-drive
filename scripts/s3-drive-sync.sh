#!/bin/bash
S3_PATH=~/s3-drive
if [ "$1" == "push" ]; then
	date +%s > $S3_PATH/.last_push
	aws s3 sync $S3_PATH s3://s3-drive-43e3d5 --profile s3-drive $2
else
	aws s3 sync s3://s3-drive-43e3d5 $S3_PATH --profile s3-drive $2
fi