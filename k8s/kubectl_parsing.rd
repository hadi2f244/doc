# Trace all pod manifest to find an string 
kubectl get pods -A  | awk '{print $2,$1}' | xargs -n2 sh -c 'kubectl get pods/"$1" -n "$2" -o yaml ' sh | grep serviceAccountToken
