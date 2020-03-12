


echo NAD
oc apply -f nad_brext.ORIGINAL.yml 


echo ConfigMap
oc apply -f set-config-map.yml 


echo Windows template
oc apply -f summit2018_windows-template-runonce.yml 

echo Upload image
virtctl image-upload dv windows --size=50Gi --image-path=Summit2019.raw --insecure


echo Create VM...
echo Run oc apply -f vm_windows.ORIGINAL.yml next