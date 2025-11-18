# Kubernetes Cheat Sheet

## How can I set the namespace I'm currently using?
`kubectl config set-context --current --namespace=<namespace>`

## How can I switch cluster?
`kubectl config use-context <cluster-name>`

## How can I check the logs for a container?
To get the logs for the pod's default container  
`kubectl logs <pod-name>`

To get the logs for another container in the pod  
`kubectl logs <pod-name> -c <container-name>`

To get the logs for the pod's default container and have them stream in real-time  
`kubectl logs -f <pod-id>`

## How can I get a list of the containers which are currently running in a pod?
`kubectl get pod <pod-name> -o jsonpath="{.spec.containers[*].name}"`

## How can I check the events for a pod?
`kubectl events --for pod/<pod-name>`

## How can I check a pod's status?
`kubectl get pods`

## How can I check the state of a container and the reason for its state?
`kubectl get pod <pod-name> -o yaml | select-string \bstate: -context 4,5`

## How can I use kubectl to get a snapshot of the CPU and memory resource usage of a pod?
`kubectl top pods`

## How can I exec on to the pod's default container and run bash commands from within an interactive shell?
Exec on to the default container for a pod
`kubectl exec -it <pod-name> -- sh`

Exec on to a different container
`kubectl exec -it <pod-name> -c <container-name> -- sh`

## How can I view the environment variables for a container?
For a pod's default container
`kubectl exec <pod-name> -- env`

For a non-default container
`kubectl exec <pod-name> -c <container-name> -- env`

## How can I change an environment variable on a running pod?
Method 1: Execute an interactive shell on the pod then set the environment variable from inside the pod
`kubectl exec -it <pod-name> -- sh`
`export <key>=<value>`

Method 2: Set it on the pod's deployment
`kubectl set env deploy/<deployment-name> <key>=<value>`

Method 3: Edit the deployment's YAML and set it that way
`kubectl edit deploy/<deploy-name>`

Method 4: Edit the ConfigMap then restart the deployment
`kubectl edit configmap <config-map-name>`
`kubectl rollout restart deploy/<deployment-name>`

## How can I check which cluster and namespace I'm currently using?
`kubectl config get-contexts`

## How can I check which secrets have been injected into a non-prod pod?
Method 1: Exec on to the pod's default container which will contain your running application
`kubectl exec -it <pod-name> -- sh`

Then navigate to the /run/secrets directory
`cd /run/secrets`

List the secrets
`ls`

View one of the secrets
`cat <secret-name>`

Method 2: Print the contents of all secrets in /run/secrets using one command

`kubectl exec -it <pod-name> -- /bin/sh -c "cd /run/secrets; ls -p | grep -v / | xa`
