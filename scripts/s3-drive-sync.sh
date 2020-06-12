#!/bin/bash

S3_PATH=
S3_BUCKET=
S3_PROFILE=

if [ "$1" == "push" ]; then
	date +%s > $S3_PATH/.last_push
	aws s3 sync $S3_PATH $S3_BUCKET --profile $S3_PROFILE $2
else
	aws s3 sync $S3_BUCKET $S3_PATH --profile $S3_PROFILE $2
fi