# Lambda Function Upload for AWS CLI
A handy script to archive your function and upload it
to Lambda Function by issuing a simple command.

## How to use the script:
1. Download it (duh)
2. Make sure it has executable permissions: `chmod 755 lfu.sh`
3. Run it from your function's root directory like this:
`/path/to/lfu.sh NameOfYourArchive NameOfYourFunction`

Note: No need to add the extension _.zip_ to your archive. 
The script will take care of that.

The script does rely on AWS CLI. To use this script, you 
will need to:

1. [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html), and then;
2. [Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

Ad then, you're all set.

Enjoy deploying to Lamda!