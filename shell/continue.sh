cloud_services=(AWS Azure GCP AlibabaCloud)
for cloud_service in ${cloud_services[@]}
do
    if [ $cloud_service = "GCP" ]
    then
         continue
    fi
    echo "The value is: $cloud_service"
done

 

cloud_services=(AWS Azure GCP AlibabaCloud)
for cloud_service in ${cloud_services[@]}
do
   if [ $cloud_service = "GCP" ]
   then
       break
    fi
    echo "The value is: $cloud_service"
done
echo "end"
