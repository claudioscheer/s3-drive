# S3 Drive

Use AWS S3 as a storage unit.

## Observations

- You will need to edit the [`scripts`](scripts) according to your needs.
- Make sure you have run `aws configure` to setup your credentials.

## Documentation

Download and edit the script [`s3-drive-sync.sh`](scripts/s3-drive-sync.sh) to suit your needs.

If you use some installer, such as [Conda](https://docs.conda.io), add these two lines in the top of the script:

```bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate aws
```

<!-- ### Create a executable globally

```console
$ sudo ln -s <full path to the script> /usr/local/bin/s3-drive-sync
``` -->

### Sync commands

#### Pull files
```console
s3-drive-sync.sh pull
```

#### Push files
```console
s3-drive-sync.sh push
```

#### Full sync

To make a full sync between S3 and the instance, use
```console
s3-drive-sync.sh <push or pull> --delete
```

## To do

- [ ] Specify the files to download. As you pay for what you download from AWS, this would save money.
- [ ] Check for conflicts when using the script in multiple instances.
- [ ] Monitor the folder and automatically send the changed files to AWS.
- [ ] Automatically encrypt and decrypt files with a PGP key.