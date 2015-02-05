import boto
import time
s3=boto.connect_s3()
bucket = s3.get_bucket('utabucket')
from boto.s3.key import Key
start_time=time.clock()
k=Key(bucket)
k.key='cloud'
k.set_contents_from_filename('C:/Users/kavya dukkipati/Downloads/us-pci.xls')
k1=Key(bucket)
k1.key='aws'
k1.set_contents_from_filename('C:/Users/kavya dukkipati/Downloads/hd2013.csv')
stop_time=time.clock()
time_taken=print(stop_time-start_time)
