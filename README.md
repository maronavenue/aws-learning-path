## Welcome to the AWS Learning Path :cloud:
An open collaboration by `maronavenue` and `rhobinjay` (and many more to come) for consolidated learning resources and materials to obtain AWS Associate-level certifications and/or simply dive right into AWS and Cloud computing. :smirk:

### Preamble
The consolidated contents are comprised of both free and paid services that were fully consumed by the collaborators. In this way, we ensure that we provide an accurate description of our various takes on the materials in respect to our common goals. Custom-made materials and notes from everyone that will help setup a particular service/scenario, or simplify a concept are cordially accepted. They should be locally linked from the main page to dedicated subfolders. For example, test dataset with commands to generate and populate a DynamoDB table. We shall label it as `Native`:house: and also recognize the contributor who made all the efforts.

|Legend|Label|
|---|---|
|:free:|Free|
|:dollar:|Paid|
|:star:|Highly recommended|
|:house:|Native|

### Main Collaborators
* [maronavenue](https://github.com/maronavenue)
* [rhobinjay](https://github.com/rhobinjay)

### Fresh updates (last revision: 11/23/2020)
* *Added sample working script to showcase `S3 Event Notification` feature (via `SQS` message polling)*
* *Added initial materials in preparation for `SOA-C01`*
* *Added sample `SSM document` (YAML format) for Apache web server basic bootstrap*
* *Added sample `Lambda python code` for `SSM Parameter Store` Demo using SDK (boto3)*
* *Added sample bash script to deploy a simple web server via `EC2 User Data` (apache)*
* *Added Dockerfile for building a wrapper container for `awsping` to enable running it without installation*
* *Kicked off barebones `Elastic Beanstalk` sample app with index home page (to be continued)*
* *Added new sections for **Getting Started** and **Useful Tips and Links***

### :construction: Upcoming :construction:
* *Add actual existing materials used for `SAA-C02` journey*
* *Add AWS formal whitepapers*
* *Share standalone training materials especially for Databases*
* *Share Docker images*
* *Add keynotes on SOA-C01 practice exams from Jon Bonso on Udemy*

## Curated Materials

### AWS Certified Cloud Practitioner
* [\[NEW\] AWS Certified Cloud Practitioner Exam Training 2020](https://www.udemy.com/course/aws-certified-cloud-practitioner-training-course/) :dollar: :star:
  * **Type:** Udemy course
  * **From:** Neal Davis
  * **Notes:** actively updated with no extra fees, thorough & accurate, comes with rich post-course downloadable materials
* [AWS Certified Cloud Practitioner Training 2020 - Full Course](https://www.youtube.com/watch?v=3hLmDS179YE) :free: :star:
   * **Type:** Youtube course
   * **From:** Andrew Brown
   * **Notes:** condensed but well-presented, covers key details for the exam, no ads (respect)

### AWS Certified Developer - Associate
* [Ultimate AWS Certified Developer Associate 2020 - NEW!](https://www.udemy.com/course/aws-certified-developer-associate-dva-c01/) :dollar: :star:
   * **Type:** Udemy course
   * **From:** Stephane Maarek
   * **Notes:** well-crafted hands-ons interconnecting to succeeding topics, great sequence (IAAS -> PAAS -> Serverless -> IAC)
* [AWS Certified Developer Associate Practice Exams](https://www.udemy.com/course/aws-certified-developer-associate-practice-exams-amazon/) :dollar: :star:
   * **Type:** Practice Exams
   * **From:** Jon Bonso
   * **Notes:** challenging especially on serverless domain, comprehensive, really reinforces the core domains to close the gaps, best exam simulation
* [AWS Certified Developer - Associate 2020 (PASS THE EXAM!)](https://www.youtube.com/watch?v=RrKRN9zRBWs) :free: :star:
   * **Type:** Youtube course
   * **From:** Andrew Brown
   * **From:** hands-ons are very developer-centric, good exposure to CLI, great explanations on concepts such as blue-green deployment, etc, no ads (respect)
* [AWS Certified Developer - Associate - June 2018 Exam](https://ankiweb.net/shared/info/987881326) :free:
   * **Type:** Anki deck
   * **From:** Anki community (Anon)
   * **Notes:** latest and best there is, cards are written in personal note-taking format but still helps for supplementary learning
* [AWS Certified Developer – Associate (DVA-C01)](https://www.pluralsight.com/paths/aws-certified-developer-associate) :dollar:
   * **Type:** PluralSight Skills Path (subscription)
   * **From:** Ryan Lewis
   * **Notes:** great topic groups, keen exposure to services, thorough & accurate

### AWS Certified Solutions Architect - Associate
* [AWS Certified Solutions Architect Associate 2020](https://ankiweb.net/shared/info/1180773976) :free: :star:
   * **Type:** Anki deck
   * **From:** Anki community (Anon)
   * **Notes:** latest (based on latest revision) and best rated across shared decks for this course

### AWS Certified Sysops Administrator - Associate
* [Ultimate AWS Certified SysOps Administrator Associate 2020](https://www.udemy.com/course/ultimate-aws-certified-sysops-administrator-associate/) :dollar: :star:
   * **Type:** Udemy course
   * **From:** Stephane Maarek
   * **Notes:** assumes student passed DVA-C01 or SAA-C02 certification, optimal and simple coverage from a SysOps perspective, really great hands-on practice exercises
* [AWS Certified SysOps Administrator Associate Practice Exams](https://www.udemy.com/course/aws-certified-sysops-administrator-associate-practice-exams-soa-c01/) :dollar: :star:
   * **Type:** Practice Exams
   * **From:** Jon Bonso
   * **Notes:** TBA once taken

## Getting Started on AWS

### Which region should I use?
There are plenty of available tools online that can determine the best region in terms of common factors such as Geolocation, HTTP pings, TCP pings, etc relative to the AWS user. I've curated some of the tools that I found useful when I was starting out.
1. [awsping](https://github.com/ekalinin/awsping) - A CLI command that checks for the latency based on HTTP or TCP. It can even average the pings based on repeats. Don't have the right environment or configuration? Feel free to pull this Docker container to run the command without installing anything: [maronavenue/awsping](https://hub.docker.com/r/maronavenue/awsping)
```bash
$ docker pull maronavenue/awsping
$ docker run -it --rm maronavenue/awsping:full http -repeats 10
      Region                                      Latency
    0 Asia Pacific (Singapore)                   66.18 ms
    1 Asia Pacific (Mumbai)                     127.90 ms
    2 Asia Pacific (Tokyo)                      129.39 ms
    3 Asia Pacific (Seoul)                      132.51 ms
    4 Asia Pacific (Sydney)                     164.30 ms
    5 US-West (California)                      174.12 ms
    6 US-West (Oregon)                          181.24 ms
    7 Europe (Frankfurt)                        211.99 ms
    8 US-East (Virginia)                        229.82 ms
    9 Europe (Ireland)                          253.35 ms
   10 South America (São Paulo)                 361.74 ms
```
2. [CloudPing.info](https://www.cloudping.info/) - A browser-based tool that also estimates latency across all regions based on HTTP.

3. [AWS latency test](https://ping.psa.fun/) - A 100% serverless solution that calculates time needed to load a resource from a health page of a particular AWS service that is accessible across all regions such as `Amazon DynamoDB`. Also provides visual reports on top of the latency test.

4. [EC2 Reachability Test](https://ec2-reachability.amazonaws.com/) - Amazon Web Services EC2 Reachability and Connectivity Test.

5. [AWS Regional Data Centers mapping](http://turnkeylinux.github.io/aws-datacenters/) - A visual mapping of direct connection lines across AWS Global presence provided by [TurnKey Hub](https://github.com/turnkeylinux/aws-datacenters). I haven't verified if it's up-to-date, so I'm putting it in the last for now.

## Useful Tips and Links
  * [http://checkip.amazonaws.com/](http://checkip.amazonaws.com/) - Use to quickly fetch your Public IPv4 address over HTTP
  * [https://www.ec2instances.info/](https://www.ec2instances.info/) - Use to list the statline across all EC2 instance types including pricing