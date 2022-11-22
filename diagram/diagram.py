#!/usr/bin/env python3

from mmap import PROT_READ
from diagrams import Diagram
from diagrams import Cluster, Diagram
from diagrams.aws.compute import EC2AutoScaling
from diagrams.aws.network    import InternetGateway,NATGateway,ElbApplicationLoadBalancer
from diagrams.onprem.compute import Server

with Diagram("Auto scale and Load Balancing in AWS Cloud", show=False):
    client = Server("Client")
    with Cluster("VPC"):
        igw = InternetGateway("IGW")
        with Cluster("Public-Subnet-a"):
            nat_gw = NATGateway("Nat_gateWay")
            lba=ElbApplicationLoadBalancer("ALB")
        with Cluster("Public-Subnet-b"):
            lbb=ElbApplicationLoadBalancer("ALB")
        with Cluster("Private-Subnet"):
            ec2=EC2AutoScaling ("Auto scaling group")

        client >> lba
        client >> lbb
        lba >> ec2
        lbb >> ec2
        ec2 >> nat_gw
        nat_gw >> igw

           
