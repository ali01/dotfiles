if [[ $mac_os == true ]] ; then
  export EC2_HOME="/vol/usr/src/ec2"
  export EC2_PRIVATE_KEY="$code/access/keys/private/ec2/pk-5RSQCJHOBDUYXASDX3HBWQHUBQCAXRZC.pem"
  export EC2_CERT="$code/access/certs/ec2/cert-5RSQCJHOBDUYXASDX3HBWQHUBQCAXRZC.pem"
  export EC2_URL='https://ec2.us-west-1.amazonaws.com'
fi
