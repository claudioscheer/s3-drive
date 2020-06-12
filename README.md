# S3 Drive

Use AWS S3 as a storage unit.

## Installation

- Make sure you have run `aws configure` to setup your credentials;
- Edit the file [`scripts/s3-drive-sync.sh`](scripts/s3-drive-sync.sh) according to your needs;
  - Basically, you will need to update the `S3_PATH`, `S3_BUCKET` and `S3_PROFILE` variables;
  - If you are using Conda, see the section below;
- Run `sh install.sh` to create a symbolic link;
  - You may need to update the script to suit you needs;

### Using [Conda](https://docs.conda.io)

Add these two lines at the top of the `scripts/s3-drive-sync.sh` script:

```bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate aws
```

## Documentation

### Pull files

```console
s3-drive-sync pull
```

### Push files

```console
s3-drive-sync push
```

### Full sync

To make a full sync between S3 and the instance, or vice versa, use the following:

```console
s3-drive-sync <push or pull> --delete
```

## To do

- [ ] Specify the files to download. As you pay for what you download from AWS, this would save money;
- [ ] Check for conflicts when using the script in multiple instances;
- [ ] Monitor the folder and automatically send the changed files to AWS;
- [ ] Automatically encrypt and decrypt files with a PGP key;