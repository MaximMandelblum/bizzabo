# bizzabo
#Terraform :
1. you can find all VPC configuration in bizzabo_vpc.tf file .
2. all LB and r53 related configuration in the file bizzabo_elb_r53.tf
3. all variables in varibles file 
4. few outputs of subnets and vpc id .

Please Run tf init before running tf plan and after that tf apply to build all infrustructure .

At the end don't forget destory all .


Reagerding the code :

I created one script that can use for both things you required .

I am using boto3 to get all describtion about the resources , i just gave few examples of thing can be shown on specific region , if needed can add other description in the code to get more resources .

The service description in details can be done from same script just add another stuff we want to see in the loop part and we can get more information about each service .

