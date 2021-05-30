import boto3


ec2 = boto3.client('ec2')

print('')
print('Subnets:')
print('-------')
sn_all = ec2.describe_subnets()
for sn in sn_all['Subnets'] :
    print(sn['SubnetId'])

print('')
print('SecuritGroups:')
print('-------')
sn_all = ec2.describe_security_groups()
for sg in sn_all['SecurityGroups']:
	print(sg['GroupName'])
 
print('')
print('VPC:')
print('-------')
sn_all = ec2.describe_vpcs()
for sg in sn_all['Vpcs']:
        print(sg['VpcId'])
        
print('')
print('EC2:')
print('-------')

sn_all = ec2.describe_instances()
for r in sn_all['Reservations']:
  for i in r['Instances']:
    print (i['InstanceId'])