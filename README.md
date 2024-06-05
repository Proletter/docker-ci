Devops interview questions

Kubernetes
- create a k8s pod using nginx, expose it and make it accessible from the public internet.
- Ensure
https://labs.iximiuz.com/playgrounds/k3s-bare
- What is a storageclass?
- What other ways can you create pods without using the API server?

Docker
- Write a dockefile for the R app
- tag it as shinyapp:v1
- Expose app of port 3000
- Run the app in detached mode while mounting current app directory as volume. We should be able to make slight changes to the app without rebuilding the entire image
- Make app accessible from a different machine.

Terraform
Write a Terraform module that does the following
- Creates An EC2 instance with a security group allowing HTTP and SSH traffic.
- Creates An S3 bucket with proper permissions.
- Creates An IAM role attached to the EC2 instance to access the S3 bucket.