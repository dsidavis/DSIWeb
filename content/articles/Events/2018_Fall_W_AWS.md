Title: DSI Workshop: Amazon Web Services for Research
Date: 11/02/2018
Time: 9am-12 pm
Where: DSI (Shields 360)
Category: Events
Tags: Workshop, Fall 2018, AWS, Amazon Web Services, Cloud Computing
xnonews: true
slug: 2018WorkshopAWS

#  AWS (Amazon Web Services) for Research

[Recording](https://www.youtube.com/watch?v=Rjweg7T7n_I)

This workshop will discuss the what, why and how of using [Amazon Web Services](https://aws.amazon.com/) to run your R, Pyton, etc. code for research in the cloud.

Specifically, the Enterprise Platforms team within IET will discuss Amazon Web Services, it's applications for data science and research and the resources IET is making available through its research computing environment.  We’ll discuss EC2 virtual machines, RDS for database instances, Lambda serverless code execution, AWS resources for running containers and discuss cost management and billing.  

We’ll also be introducing IET initiatives related to AWS provisioning and demonstrate the deployment of some basic AWS computing environments for data science research purposes. 

There will be resources available to answer specific questions about AWS and cloud services in general. 

Come join the discussion!

### Resources

* Campus cloud resources
	* http://cloud.ucdavis.edu
		* UC Davis Slack channel #cloud-computing
		* cloud-talk@ucdavis.edu
		* it service catalog
* Campus HPC (not cloud) resources 
	* list: http://hpc.ucdavis.edu
	* UC Davis Slack channel: #HPC
	
### Notes
		
* What is the cloud?
		* distributed infrastructure hosted by an external entity made available on-demand
		* pricing generally based on usage (resource size and duration of use, typically monthly charges)
		* availability and nework reliablity are key benefits of using cloud services
* Advantages of cloud computing:
		* easy to automate, quick deployments, elastic
		* functionally infinite compute resources
		* pay for only what you are actually using
		* lots of community support and tools as well as commoditized products
		* isolated environments **can** provide security
		* experimentation environment
* Caveats:
		* costs need to be closely managed
		* for on-going, long-term multi-year research projects, it can get expensive
		* security isn't managed by any centeral IT organization (you are responsible for all firewall rules, routing, etc.)
		* infrastructure management is your responsibility
* AWS 
		* 90+ services!
		* integrations with many other services
		* good reliability, highly distributed
				* worldwide data center network (15+ regions)
		* good space for beginner cloud user
		* self service, on-demand pricing, scaling, etc.
		* can be secure
		* supported by UC Davis
		* wide array of use cases:
			* web application publishing
			* internet of things deployments
			* traditional data center services
			* automated call center applications
			* image processing, data mining
			* HPC
			* short-term computer resources
			* machine learning algorithms
			* storage and backup
			* static web-hosting
* Maximizing your AWS
	* best investment for short, quick jobs
	* optimize your instances, close when done, etc.
* Interacting with AWS
		* Inferfaces:
			* AWS Command Line Interface (CLI) - recommend if you are comfortable with command line
			* Software Development Kit (SDK) - available for most common languages; inc. Python, Java, Ruby, Go, C++, .NET, ...
			* CloudFormation: 
				* Infrastructure as Code tool for building portable deployment specifications for your AWS infrastructure
				* Offers portability
				* Related - TerraForm
		* AMI (Amazon Machine Image): state capture of the system
			* includes deep learning instances
			* prices very by region (look up on-demand pricing based on instance and region)
			* charges for use and any licensing
			* "free" tiers - 
		* Up and running
			* key pair - use to ssh into the system
			* VPC - virtual private cloud
* Core Concepts
		* Identity and Access Management (IAM)
			* use Duo to configure MFA for you on AWS
			* roles are similar to user accounts, but you can also assign it to objects
* RDS (Relational Database Service)
		* on-demand database service for running MySQL, MSSQL, Oracle, PostGres, Aurora
		* free tier available
* S3 - generic storage
			* pick unique names for your S3 buckets!
			* don't make it public unless you have a specific reason to do so
			* to get university discount for data egress charages, make sure to sign up for this!
* Others
		* Neptune graph database
		* EMR elastic map reduce	
		* Lambda - executing python code
			* ETL - extract, transform, load
* Free stuff
		* First 12-months, get:
			* 750 hours of EC2 Amazon Linux or Windows 2012-2016 t2.micro usage
			* 750 hours of elastic load balancing services
			* 30GB elastic block storage
			* 5GB of S3 standadrd storage
			* 750 hours of RDS for MySWL
		* Non-expiring
			* 25GB of DynamicDB storage and 200M requests per monthly
			* others...
		* Educational credits
			* Apply through the AWS Educate program
			* $200 credits per educator, free access to trainings, lab, etc.
			* students can get $100 AWS credits
* Services UC Davis IET is providing:
		* Consolidated Billing & Provisioning
		* Security
		* Services (research environment templates and reference architecture)
		* Community of Practice
			* consultations, training, workshops, etc.
		* Request info: ietconsult@ucdavis.edu
* Questions:
		* Is AWS good for archival purposes? Depends on how much data, how long you want to store it, how quickly you need to access the data