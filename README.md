# TeamSpeak Server

Automated TeamSpeak 3 server installation which runs using AWS EC2 within the free tier.

## Requirements

- GitHub Account
- AWS Account
- CircleCI Account

These are free so long as you stay within their limitations, which this repository is configured to do.

## Get Up and Running

Ensure your CircleCI and AWS accounts have been linked, then simply fork this repository; CircleCI will pick up the repository and deploy the cloudformation template using the AWS CLI.

Please note that the script is set to deploy to eu-west-1 (Ireland) by default. Configure this in deploy.sh if you want to change it.

Once CircleCI has completed the deploy you'll have an EC2 instance running TS3, with ingress and egress configured for public access. The last step is to retrieve the privilege key from the server.

Login to AWS and find the EC2 instance we just created, it'll be named `TeamSpeak-EC2Instance`. Connect to it using the browser based terminal AWS provides and run the following command:

```sh
cat /home/teamspeak/logs/ts3server_*
```

Copy this and store it somewhere safe, you'll need to enter it the first time you login to the server using the TeamSpeak client.

Close the terminal and find the ElasticIP associated with the EC2 instance, this is a public facing static IP address that you can use to connect to your TeamSpeak server, you can use Route53 to point a domain to it if you wish, but that is beyond the scope of this readme.

If you followed all these steps correctly you should now have your very own free teamspeak server.

Please create issues if you find any :)
